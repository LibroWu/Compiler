package Backend;

import Assembly.AsmBlock;
import Assembly.AsmFunc;
import Assembly.AsmPg;
import Assembly.Instr.*;
import Assembly.Operand.Imm;
import Assembly.Operand.PhyReg;
import Assembly.Operand.Reg;
import Assembly.Operand.virtualReg;

import java.util.*;

public class GraphColoring {
    private enum InWhichNodeSet {
        INITIAL, PRECOLORED, SIMPLIFYWORKLIST, FREEZEWORKLIST, SPILLEDNODES, COALESCEDNODES, COLOREDNODES, SELECTSTACK
    }

    private final int K = 32;
    private LivenessAnalysis livenessAnalysis;
    private AsmPg asmPg;
    private AsmFunc asmFunc;
    private HashSet<Integer> preColored, initial, simplifyWorklist, freezeWorklist, spilledNodes, coalescedNodes, coloredNodes, spillWorklist;
    private LinkedList<Integer> selectStack;
    private HashSet<Inst> coalescedMoves, constrainedMoves, frozenMoves, worklistMoves, activeMove;
    private HashMap<Integer, virtualReg> IntToVirtualReg;
    //Edge u to v then hash to u*MaxNodeNumber + v
    private HashSet<Integer> adjSet;
    private ArrayList<Integer> degree, alias, color;
    private ArrayList<Double> Priority;
    private ArrayList<LinkedList<Inst>> moveList;
    private ArrayList<LinkedList<Integer>> adjList;
    private ArrayList<InWhichNodeSet> inWhichNodeSets;
    private int finalRegCount;
    private final double[] myExp = {1, 10, 1e2, 1e3, 1e4, 1e5, 1e6, 1e7, 1e8, 1e9, 1e10, 1e11, 1e12, 1e13, 1e14, 1e15, 1e16, 1e17, 1e18};
    private PhyReg ra, sp, s0, zero, t0, t1, t2, t3, t4, t5, a0;
    private ArrayList<PhyReg> phyRegs;
    private BitSet colorSet = new BitSet(K),callerSavedSet = new BitSet(K),calleeSavedUsed = new BitSet(32);

    public GraphColoring(AsmPg asmPg, AsmFunc asmFunc, LivenessAnalysis livenessAnalysis) {
        this.asmPg = asmPg;
        this.asmFunc = asmFunc;
        this.livenessAnalysis = livenessAnalysis;
        preColored = new HashSet<>();
        for (int i=0;i<K;++i) preColored.add(i);
        initial = new HashSet<>();
        simplifyWorklist = new HashSet<>();
        freezeWorklist = new HashSet<>();
        spillWorklist = new HashSet<>();
        spilledNodes = new HashSet<>();
        coalescedNodes = new HashSet<>();
        coloredNodes = new HashSet<>();
        selectStack = new LinkedList<>();

        coalescedMoves = new HashSet<>();
        constrainedMoves = new HashSet<>();
        frozenMoves = new HashSet<>();
        worklistMoves = new HashSet<>();
        activeMove = new HashSet<>();

        s0 = asmPg.phyRegs.get(8);
        phyRegs = asmPg.phyRegs;
        colorSet.set(0,5);
        colorSet.set(8);
        callerSavedSet.set(0,8);
        callerSavedSet.set(10,18);
        callerSavedSet.set(28,32);
        asmFunc.calleeSavedUsed = calleeSavedUsed;
        /*ArrayList<PhyReg> tmpPhyRegs = asmPg.phyRegs;
        //t0-t6,a0-a7,s1-s11
        phyRegs = new ArrayList<>(Arrays.asList(tmpPhyRegs.get(5), tmpPhyRegs.get(6), tmpPhyRegs.get(7)));
        for (int i = 28; i < 32; ++i) phyRegs.add(tmpPhyRegs.get(i));
        for (int i = 10; i < 18; ++i) phyRegs.add(tmpPhyRegs.get(i));
        phyRegs.add(tmpPhyRegs.get(9));
        for (int i = 18; i < 28; ++i) phyRegs.add(tmpPhyRegs.get(i));*/
    }

    private void Build() {
        asmFunc.blockList.forEach(asmBlock -> {
            BitSet live;
            Inst secondTailInst = asmBlock.tailInst.prev;
            if (secondTailInst instanceof Br) {
                live = (BitSet) secondTailInst.liveOut.clone();
            } else live = (BitSet) asmBlock.tailInst.liveOut.clone();
            for (Inst i = asmBlock.tailInst; i != null; i = i.prev) {
                if (i instanceof Mv) {
                    Mv mv = (Mv) i;
                    live.andNot(i.use);
                    moveList.get(mv.rd.getNumber()).add(i);
                    if (mv.rd != mv.rs1) {
                        moveList.get(mv.rs1.getNumber()).add(i);
                    }
                    worklistMoves.add(i);
                }
                live.or(i.def);
                BitSet def = i.def;
                for (int d = def.nextSetBit(0); d >= 0; d = def.nextSetBit(d + 1))
                    for (int l = live.nextSetBit(0); l >= 0; l = live.nextSetBit(l + 1)) {
                        AddEdge(l, d);
                    }
                if (i instanceof FuncCall) {
                    //System.out.println(i+"^^^"+live);
                    for (int d = live.nextSetBit(0); d >= 0; d = live.nextSetBit(d + 1)) {
                        for (int l = callerSavedSet.nextSetBit(0); l >= 0; l = callerSavedSet.nextSetBit(l + 1)) {
                            AddEdge(l, d);
                        }
                    }
                }
                live.andNot(i.def);
                live.or(i.use);
            }
        });
    }

    private void AddEdge(int u, int v) {
        if (!adjSet.contains(u * finalRegCount + v) && u != v) {
            adjSet.add(u * finalRegCount + v);
            adjSet.add(v * finalRegCount + u);
            //u not in precolored
            if (u >= 32) {
                adjList.get(u).add(v);
                degree.set(u, degree.get(u) + 1);
            }
            //v not in precolored
            if (v >= 32) {
                adjList.get(v).add(u);
                degree.set(v, degree.get(v) + 1);
            }
        }
    }

    private void MakeWorklist() {
        initial.forEach(n -> {
            if (degree.get(n) >= K) spillWorklist.add(n);
            else if (MoveRelated(n)) freezeWorklist.add(n);
            else simplifyWorklist.add(n);
        });
        initial.clear();
    }

    private boolean MoveRelated(int n) {
        return !moveList.get(n).isEmpty();
    }

    private void Simplify() {
        Iterator<Integer> iter = simplifyWorklist.iterator();
        int n = iter.next();
        simplifyWorklist.remove(n);
        selectStack.push(n);
        inWhichNodeSets.set(n,InWhichNodeSet.SELECTSTACK);
        adjList.get(n).forEach(m -> {
            InWhichNodeSet checkSet = inWhichNodeSets.get(m);
            if (checkSet != InWhichNodeSet.SELECTSTACK && !coalescedNodes.contains(m)) {
                DecrementDegree(m);
            }
        });
    }

    private void DecrementDegree(int m) {
        int d = degree.get(m);
        degree.set(m, d - 1);
        if (d == K) {
            //EnableMoves
            adjList.get(m).forEach(n -> {
                InWhichNodeSet checkSet = inWhichNodeSets.get(n);
                if (checkSet != InWhichNodeSet.SELECTSTACK && !coalescedNodes.contains(m)) {
                    EnableMoves(n);
                }
            });
            EnableMoves(m);
            spillWorklist.remove(m);
            if (MoveRelated(m))
                freezeWorklist.add(m);
            else simplifyWorklist.add(m);
        }
    }

    private void EnableMoves(int n) {
        moveList.get(n).forEach(m -> {
            if (activeMove.contains(m)) {
                activeMove.remove(m);
                worklistMoves.add(m);
            }
        });
    }

    private void Coalesce() {
        Iterator<Inst> iter = worklistMoves.iterator();
        Mv m = (Mv) iter.next();
        worklistMoves.remove(m);
        int x = GetAlias(m.rd.getNumber()), y = GetAlias(m.rs1.getNumber()), u, v;
        if (preColored.contains(y)) {
            u = y;
            v = x;
        } else {
            u = x;
            v = y;
        }
        if (u == v) {
            coalescedMoves.add(m);
            AddWorkList(u);
        } else if (preColored.contains(v) || adjSet.contains(u * finalRegCount + v)) {
            constrainedMoves.add(m);
            AddWorkList(u);
            AddWorkList(v);
        } else {
            boolean flag = preColored.contains(u);
            if (flag && checkOK(u, v) || !flag && Conservative(u, v)) {
                coalescedMoves.add(m);
                Combine(u, v);
                AddWorkList(u);
            } else activeMove.add(m);
        }
    }

    private boolean checkOK(int u, int v) {
        for (Integer t : adjList.get(v)) {
            InWhichNodeSet checkSet = inWhichNodeSets.get(t);
            if (checkSet != InWhichNodeSet.SELECTSTACK && !coalescedNodes.contains(t)) {
                if (!OK(t, u)) return false;
            }
        }
        return true;
    }

    private boolean Conservative(int u, int v) {
        int k = 0;
        BitSet bitSet = new BitSet(finalRegCount);
        for (Integer n : adjList.get(u)) {
            InWhichNodeSet checkSet = inWhichNodeSets.get(n);
            if (checkSet != InWhichNodeSet.SELECTSTACK && !coalescedNodes.contains(n)) {
                bitSet.set(n);
                if (degree.get(n) >= K) ++k;
            }
        }
        for (Integer n : adjList.get(v)) {
            InWhichNodeSet checkSet = inWhichNodeSets.get(n);
            if (checkSet != InWhichNodeSet.SELECTSTACK && !coalescedNodes.contains(n) && !bitSet.get(n)) {
                if (degree.get(n) >= K) ++k;
            }
        }
        return k < K;
    }

    private boolean OK(int t, int r) {
        return degree.get(t) < K || t < 32 || adjSet.contains(t * finalRegCount + r);
    }

    private void Combine(int u, int v) {
        if (freezeWorklist.contains(v)) freezeWorklist.remove(v);
        else spillWorklist.remove(v);
        coalescedNodes.add(v);
        alias.set(v, u);
        moveList.get(u).addAll(moveList.get(v));
        EnableMoves(v);
        for (Integer t : adjList.get(v)) {
            InWhichNodeSet checkSet = inWhichNodeSets.get(t);
            if (checkSet != InWhichNodeSet.SELECTSTACK && !coalescedNodes.contains(t)) {
                AddEdge(t, u);
                DecrementDegree(t);
            }
        }
        if (degree.get(u) >= K && freezeWorklist.contains(u)) {
            freezeWorklist.remove(u);
            spillWorklist.add(u);
        }
    }

    private void AddWorkList(int u) {
        if (u >= 32 && !MoveRelated(u) && degree.get(u) < K) {
            freezeWorklist.remove(u);
            simplifyWorklist.add(u);
        }
    }

    private int GetAlias(int n) {
        if (coalescedNodes.contains(n)) return GetAlias(alias.get(n));
        return n;
    }

    private void Freeze() {
        Iterator<Integer> iter = freezeWorklist.iterator();
        int u = iter.next();
        freezeWorklist.remove(u);
        simplifyWorklist.add(u);
        FreezeMoves(u);
    }

    private void FreezeMoves(int u) {
        moveList.get(u).forEach(m -> {
            if (activeMove.contains(m) || worklistMoves.contains(m)) {
                Mv M = (Mv) m;
                int v;
                if (GetAlias(M.rs1.getNumber()) == GetAlias(u)) v = GetAlias(M.rd.getNumber());
                else v = GetAlias(M.rs1.getNumber());
                activeMove.remove(m);
                frozenMoves.add(m);
                boolean hasNodeMoves = false;
                for (Inst inst : moveList.get(v)) {
                    if (activeMove.contains(inst) || worklistMoves.contains(inst)) {
                        hasNodeMoves = true;
                        break;
                    }
                }
                if (!hasNodeMoves && degree.get(v) < K) {
                    freezeWorklist.remove(v);
                    simplifyWorklist.add(v);
                }
            }
        });
    }

    private void passTheFunc() {
        IntToVirtualReg = new HashMap<>();
        for (AsmBlock asmBlock : asmFunc.blockList) {
            double loopWeight = (asmBlock.loopDepth > 18) ? 4e18 : myExp[asmBlock.loopDepth];
            int tmp;
            for (Inst i = asmBlock.headInst; i != null; i = i.next) {
                if (i instanceof Br) {
                    Br branch = (Br) i;
                    tmp = branch.src1.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                    if (branch.src2 != null) {
                        tmp = branch.src2.getNumber();
                        Priority.set(tmp, Priority.get(tmp) + loopWeight);
                    }
                } else if (i instanceof IType) {
                    IType it = (IType) i;
                    tmp = it.rd.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                    tmp = it.rs.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                } else if (i instanceof La) {
                    La la = (La) i;
                    tmp = la.rd.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                } else if (i instanceof Ld) {
                    Ld ld = (Ld) i;
                    tmp = ld.rd.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                    tmp = ld.addr.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                } else if (i instanceof Li) {
                    Li li = (Li) i;
                    tmp = li.rd.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                } else if (i instanceof Lui) {
                    Lui lui = (Lui) i;
                    tmp = lui.rd.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                } else if (i instanceof Mv) {
                    Mv mv = (Mv) i;
                    tmp = mv.rd.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                    tmp = mv.rs1.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                } else if (i instanceof RType) {
                    RType r = (RType) i;
                    tmp = r.rd.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                    tmp = r.rs1.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                    tmp = r.rs2.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                } else if (i instanceof St) {
                    St st = (St) i;
                    tmp = st.rs.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                    tmp = st.addr.getNumber();
                    Priority.set(tmp, Priority.get(tmp) + loopWeight);
                }
            }
        }
    }

    private void SelectSpill() {
        passTheFunc();
        int m = spillWorklist.iterator().next();
        double chosenThreshold = 1e99;
        BitSet bitSet = new BitSet(finalRegCount);
        for (Integer i : spillWorklist) {
            double currentPriority = Priority.get(i) / degree.get(i);
            if (i > asmFunc.originalRegisterCount + 32) currentPriority += 1e6;
            if (currentPriority < chosenThreshold) {
                chosenThreshold = currentPriority;
                m = i;
            }
        }
        spillWorklist.remove(m);
        simplifyWorklist.add(m);
        FreezeMoves(m);
    }

    private void AssignColors() {
        calleeSavedUsed.clear();
        while (!selectStack.isEmpty()) {
            int n = selectStack.pop();
            inWhichNodeSets.set(n,InWhichNodeSet.COLOREDNODES);
            BitSet forbidBits = (BitSet) colorSet.clone();
            for (Integer w : adjList.get(n)) {
                int aliasW = GetAlias(w);
                if (coloredNodes.contains(aliasW) || aliasW < 32) forbidBits.set(color.get(aliasW));
            }
            int nextClearBit = forbidBits.nextClearBit(0);
            if (nextClearBit < 0 || nextClearBit>=K) spilledNodes.add(n);
            else {
                coloredNodes.add(n);
                int colorChosen = forbidBits.nextClearBit(0);
                if (!callerSavedSet.get(colorChosen))
                    calleeSavedUsed.set(colorChosen);
                //if (forbidBits.nextClearBit(0)==32) System.out.println("---"+n+"---");
                color.set(n, colorChosen);
            }
        }
        for (Integer n : coalescedNodes) {
            //if (color.get(GetAlias(n))==32) System.out.println("^^^"+n+" "+GetAlias(n)+"^^^");
            color.set(n, color.get(GetAlias(n)));
        }
        int calleeSavedCount = 0;
        for (int d = calleeSavedUsed.nextSetBit(0); d >= 0; d = calleeSavedUsed.nextSetBit(d + 1)) {
            ++calleeSavedCount;
        }
        asmFunc.calleeSavedCount = calleeSavedCount;
    }

    private void RewriteProgram() {
        LinkedList<Integer> newTemps = new LinkedList<>();
        HashMap<Integer, Integer> getStackPos = new HashMap<>();
        for (Integer spilledNode : spilledNodes) {
            getStackPos.put(spilledNode, asmFunc.stackReserved++);
        }
        asmFunc.blockList.forEach(asmBlock -> {
            int tmp;
            for (Inst i = asmBlock.headInst; i != null; i = i.next) {
                if (i instanceof Br) {
                    Br branch = (Br) i;
                    tmp = branch.src1.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        branch.src1 = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(branch.src1.getNumber());
                        asmBlock.insert_before(i, new Ld(branch.src1, s0, new Imm(stackPos * -4), 4));
                    }
                    if (branch.src2 != null) {
                        tmp = branch.src2.getNumber();
                        if (spilledNodes.contains(tmp)) {
                            int stackPos = getStackPos.get(tmp);
                            branch.src2 = new virtualReg(asmFunc.registerCount++);
                            newTemps.add(branch.src2.getNumber());
                            asmBlock.insert_before(i, new Ld(branch.src2, s0, new Imm(stackPos * -4), 4));
                        }
                    }
                } else if (i instanceof IType) {
                    IType it = (IType) i;
                    tmp = it.rd.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        it.rd = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(it.rd.getNumber());
                        asmBlock.insert_after(i, new St(it.rd, s0, new Imm(stackPos * -4), 4));
                    }
                    tmp = it.rs.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        it.rs = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(it.rs.getNumber());
                        asmBlock.insert_before(i, new Ld(it.rs, s0, new Imm(stackPos * -4), 4));
                    }
                } else if (i instanceof La) {
                    La la = (La) i;
                    tmp = la.rd.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        la.rd = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(la.rd.getNumber());
                        asmBlock.insert_after(i, new St(la.rd, s0, new Imm(stackPos * -4), 4));
                    }
                } else if (i instanceof Ld) {
                    Ld ld = (Ld) i;
                    tmp = ld.rd.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        ld.rd = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(ld.rd.getNumber());
                        asmBlock.insert_after(i, new St(ld.rd, s0, new Imm(stackPos * -4), 4));
                    }
                    tmp = ld.addr.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        ld.addr = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(ld.addr.getNumber());
                        asmBlock.insert_before(i, new Ld(ld.addr, s0, new Imm(stackPos * -4), 4));
                    }
                } else if (i instanceof Li) {
                    Li li = (Li) i;
                    tmp = li.rd.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        li.rd = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(li.rd.getNumber());
                        asmBlock.insert_after(i, new St(li.rd, s0, new Imm(stackPos * -4), 4));
                    }
                } else if (i instanceof Lui) {
                    Lui lui = (Lui) i;
                    tmp = lui.rd.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        lui.rd = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(lui.rd.getNumber());
                        asmBlock.insert_after(i, new St(lui.rd, s0, new Imm(stackPos * -4), 4));
                    }
                } else if (i instanceof Mv) {
                    Mv mv = (Mv) i;
                    tmp = mv.rd.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        mv.rd = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(mv.rd.getNumber());
                        asmBlock.insert_after(i, new St(mv.rd, s0, new Imm(stackPos * -4), 4));
                    }
                    tmp = mv.rs1.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        mv.rs1 = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(mv.rs1.getNumber());
                        asmBlock.insert_before(i, new Ld(mv.rs1, s0, new Imm(stackPos * -4), 4));
                    }
                } else if (i instanceof RType) {
                    RType r = (RType) i;
                    tmp = r.rd.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        r.rd = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(r.rd.getNumber());
                        asmBlock.insert_after(i, new St(r.rd, s0, new Imm(stackPos * -4), 4));
                    }
                    tmp = r.rs1.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        r.rs1 = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(r.rs1.getNumber());
                        asmBlock.insert_before(i, new Ld(r.rs1, s0, new Imm(stackPos * -4), 4));
                    }
                    tmp = r.rs2.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        r.rs1 = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(r.rs2.getNumber());
                        asmBlock.insert_before(i, new Ld(r.rs1, s0, new Imm(stackPos * -4), 4));
                    }
                } else if (i instanceof St) {
                    St st = (St) i;
                    tmp = st.rs.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        st.rs = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(st.rs.getNumber());
                        asmBlock.insert_before(i, new Ld(st.rs, s0, new Imm(stackPos * -4), 4));
                    }
                    tmp = st.addr.getNumber();
                    if (spilledNodes.contains(tmp)) {
                        int stackPos = getStackPos.get(tmp);
                        st.addr = new virtualReg(asmFunc.registerCount++);
                        newTemps.add(st.addr.getNumber());
                        asmBlock.insert_before(i, new Ld(st.addr, s0, new Imm(stackPos * -4), 4));
                    }
                }
            }
        });
        spilledNodes = new HashSet<>();
        initial = coloredNodes;
        initial.addAll(coalescedNodes);
        initial.addAll(newTemps);
        coalescedNodes = new HashSet<>();
        coloredNodes = new HashSet<>();
    }

    private void initialize() {
        adjSet = new HashSet<>();
        finalRegCount = asmFunc.registerCount + 32;
        degree = new ArrayList<>(finalRegCount);
        alias = new ArrayList<>(finalRegCount);
        color = new ArrayList<>(finalRegCount);
        inWhichNodeSets = new ArrayList<>(finalRegCount);
        moveList = new ArrayList<>(finalRegCount);
        adjList = new ArrayList<>(finalRegCount);
        Priority = new ArrayList<>(finalRegCount);
        for (int i = 0; i < 32; ++i) {
            inWhichNodeSets.add(InWhichNodeSet.PRECOLORED);
            color.add(i);
            degree.add(0);
            alias.add(i);
            Priority.add(0.0);
            moveList.add(new LinkedList<>());
            adjList.add(new LinkedList<>());
        }
        for (int i = 32; i < finalRegCount; ++i) {
            inWhichNodeSets.add(i, InWhichNodeSet.INITIAL);
            color.add(-1);
            degree.add(0);
            alias.add(i);
            Priority.add(0.0);
            moveList.add(new LinkedList<>());
            adjList.add(new LinkedList<>());
            initial.add(i);
        }
        for (int i = 0; i < 32; ++i) {
            for (int j = 0; j < 32; ++j) {
                adjSet.add(i * finalRegCount + j);
                adjSet.add(j * finalRegCount + i);
                adjList.get(i).add(j);
            }
        }
    }

    private void Replace() {
        int stackChange = -4*asmFunc.calleeSavedCount;
        for (AsmBlock asmBlock : asmFunc.blockList) {
            int tmp;
            for (Inst i = asmBlock.headInst; i != null; i = i.next) {
                if (i instanceof Br) {
                    Br branch = (Br) i;
                    tmp = branch.src1.getNumber();
                    if (tmp >= 32) branch.src1 = phyRegs.get(color.get(tmp));
                    if (branch.src2 != null) {
                        tmp = branch.src2.getNumber();
                        if (tmp >= 32) branch.src2 = phyRegs.get(color.get(tmp));
                    }
                } else if (i instanceof IType) {
                    IType it = (IType) i;
                    tmp = it.rd.getNumber();
                    if (tmp >= 32) it.rd = phyRegs.get(color.get(tmp));
                    tmp = it.rs.getNumber();
                    if (tmp >= 32) it.rs = phyRegs.get(color.get(tmp));
                } else if (i instanceof La) {
                    La la = (La) i;
                    tmp = la.rd.getNumber();
                    if (tmp >= 32) la.rd = phyRegs.get(color.get(tmp));
                } else if (i instanceof Ld) {
                    Ld ld = (Ld) i;
                    tmp = ld.rd.getNumber();
                    if (tmp >= 32) ld.rd = phyRegs.get(color.get(tmp));
                    tmp = ld.addr.getNumber();
                    if (tmp >= 32) ld.addr = phyRegs.get(color.get(tmp));
                    if (ld.addr.getNumber()==8)ld.offset = new Imm(ld.offset.value+stackChange);
                } else if (i instanceof Li) {
                    Li li = (Li) i;
                    tmp = li.rd.getNumber();
                    if (tmp >= 32) li.rd = phyRegs.get(color.get(tmp));
                } else if (i instanceof Lui) {
                    Lui lui = (Lui) i;
                    tmp = lui.rd.getNumber();
                    if (tmp >= 32) lui.rd = phyRegs.get(color.get(tmp));
                } else if (i instanceof Mv) {
                    Mv mv = (Mv) i;
                    tmp = mv.rd.getNumber();
                    if (tmp >= 32) mv.rd = phyRegs.get(color.get(tmp));
                    tmp = mv.rs1.getNumber();
                    if (tmp >= 32) mv.rs1 = phyRegs.get(color.get(tmp));
                } else if (i instanceof RType) {
                    RType r = (RType) i;
                    tmp = r.rd.getNumber();
                    //System.out.println("***"+r+"***");
                    if (tmp >= 32) r.rd = phyRegs.get(color.get(tmp));
                    tmp = r.rs1.getNumber();
                    if (tmp >= 32) r.rs1 = phyRegs.get(color.get(tmp));
                    tmp = r.rs2.getNumber();
                    if (tmp >= 32) r.rs2 = phyRegs.get(color.get(tmp));
                } else if (i instanceof St) {
                    St st = (St) i;
                    tmp = st.rs.getNumber();
                    if (tmp >= 32) st.rs = phyRegs.get(color.get(tmp));
                    tmp = st.addr.getNumber();
                    if (tmp >= 32) st.addr = phyRegs.get(color.get(tmp));
                    if (st.addr.getNumber()==8)st.offset = new Imm(st.offset.value+stackChange);
                }
            }
        }
    }

    public void Main() {
        livenessAnalysis.workInFunc(asmFunc);
        initialize();
        Build();
        MakeWorklist();
        do {
            if (!simplifyWorklist.isEmpty()) Simplify();
            else if (!worklistMoves.isEmpty()) Coalesce();
            else if (!freezeWorklist.isEmpty()) Freeze();
            else if (!spillWorklist.isEmpty()) SelectSpill();
            else break;
        } while (true);
        AssignColors();
        if (spilledNodes.isEmpty()) {
            Replace();
        } else {
            RewriteProgram();
            this.Main();
        }
    }
}
