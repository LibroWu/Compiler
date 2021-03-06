package Backend.Mem2Reg;

import IR.*;
import Backend.AnalysisPass.DominateTreePass;
import java.util.*;

public class Mem2Reg {
    public program pg;
    private HashMap<register, alloca> RegToAlloca;
    private HashMap<entity, entity> ValReplace;
    private DominateTreePass dominateTreePass = new DominateTreePass();
    private LinkedList<block> postOrderSequence;
    //for debug
    private int counter = -1;

    //In Mx* all allocas are promotable
    //The proposition is checked by practice
    public Mem2Reg(program pg) {
        this.pg = pg;
    }

    private boolean rewriteSingleStoreAlloca(alloca AI, AllocaInfo Info) {
        Info.UsingBlocks.clear();
        block StoreBB = Info.OnlyStore.parentBlock;
        boolean witnessStore = false;
        for (user user : AI.users) {
            //the only store
            if (user instanceof store) {
                witnessStore = true;
                continue;
            }
            load LI = (load) user;
            if (LI.parentBlock == StoreBB) {
                if (!witnessStore) {
                    Info.UsingBlocks.add(StoreBB);
                    continue;
                }
            } else if (!dominateTreePass.dominates(StoreBB, LI.parentBlock)) {
                // If the load and store are in different blocks
                // and the block store in can not dominate the block load in
                Info.UsingBlocks.add(LI.parentBlock);
                continue;
            }
            //do the rewrite safely
            LI.removed = true;
            LI.recorder = Info.OnlyStore.resource;
        }
        if (!Info.UsingBlocks.isEmpty()) return false;
        Info.OnlyStore.removed = true;
        return true;
    }

    private boolean promoteSingleBlockAlloca(alloca AI, AllocaInfo Info) {
        //users are inserted into AI by the order they appear in the block
        store previousStore = null;
        for (user user : AI.users) {
            if (user instanceof load) {
                if (previousStore == null) {
                    if (Info.OnlyStore == null) {
                        //undefined initialization
                        load LI = (load) user;
                        LI.removed = true;
                        entity en;
                        if (LI.rsType.ptrNum > 1) en = new constant();
                        else en = new constant(0);
                        LI.recorder = en;
                    } else return false;
                } else {
                    load LI = (load) user;
                    LI.removed = true;
                    LI.recorder = previousStore.resource;
                }
            } else {
                previousStore = (store) user;
                user.removed = true;
            }
        }
        return true;
    }

    private void Rename(block BB, HashMap<alloca, entity> IncomingValues) {
        //System.out.println( BB+ " " + IncomingValues);
        //System.out.println(BB + " DF: " + BB.DominatorFrontier + " IDOM: " + BB.IDom);
        for (statement stmt = BB.headStatement; stmt != null; stmt = stmt.next) {
            if (stmt instanceof user) {
                if (stmt instanceof store) {
                    stmt.replace(ValReplace);
                    store SI = (store) stmt;
                    if (!RegToAlloca.containsKey(SI.target) || SI.removed) continue;
                    alloca AI = RegToAlloca.get(SI.target);
                    IncomingValues.put(AI, SI.resource);
                    SI.removed = true;
                } else {
                    load LI = (load) stmt;
                    LI.replace(ValReplace);
                    if (!RegToAlloca.containsKey(LI.ptr)) continue;
                    if (LI.removed) {
                        ValReplace.put(LI.rd, LI.recorder);
                        continue;
                    }
                    alloca AI = RegToAlloca.get(LI.ptr);
                    ValReplace.put(LI.rd, IncomingValues.get(AI));
                    LI.removed = true;
                }
            } else if (stmt instanceof phi) {
                phi PI = (phi) stmt;
                if (PI.creator == null) PI.replace(ValReplace);
                else {
                    IncomingValues.put(PI.creator, PI.rd);
                }
            } else {
                stmt.replace(ValReplace);
            }
        }
        for (block successor : BB.successors) {
            for (phi PI : successor.Phis)
                if (PI.creator != null) PI.push_back(new entityBlockPair(IncomingValues.get(PI.creator), BB));
        }
        for (block child : BB.children) {
            Rename(child, new HashMap<>(IncomingValues));
        }
    }

    private void removeDeadStmts() {
        for (block BB : postOrderSequence) {
            statement nxt;
            for (statement stmt = BB.headStatement; stmt != null; stmt = nxt) {
                nxt = stmt.next;
                if (stmt.removed) BB.delete_Statement(stmt);
            }
        }
    }

    private void runInFunc(funcDef f) {
        // initialize?
        postOrderSequence = dominateTreePass.Run(f);
        // collect information
        RegToAlloca = new HashMap<>();
        for (alloca AI : f.allocas) {
            RegToAlloca.put(AI.rd, AI);
        }
        for (block BB : postOrderSequence) {
            BB.globalAssociated = new LinkedList<>();
            for (statement stmt = BB.headStatement; stmt != null; stmt = stmt.next) {
                if (stmt instanceof user) {
                    if (stmt instanceof store) {
                        store SI = (store) stmt;
                        if (RegToAlloca.containsKey(SI.target)) {
                            RegToAlloca.get(SI.target).users.add(SI);
                        }
                        if (SI.target.label != null) {
                            f.globalVariableUsed.add(SI.target);
                            BB.globalAssociated.add(SI);
                        }
                    } else {
                        load LI = (load) stmt;
                        if (RegToAlloca.containsKey(LI.ptr)) {
                            RegToAlloca.get(LI.ptr).users.add(LI);
                        }
                        if (LI.ptr.label != null) {
                            f.globalVariableUsed.add(LI.ptr);
                            BB.globalAssociated.add(LI);
                        }
                    }
                } else if (stmt instanceof call) BB.globalAssociated.add(stmt);
            }
        }

        Iterator<alloca> iter = f.allocas.listIterator();
        AllocaInfo Info = new AllocaInfo();
        while (iter.hasNext()) {
            alloca AI = iter.next();
            if (AI.users.isEmpty()) {
                iter.remove();
                continue;
            }
            Info.analyseAlloca(AI);
            if (Info.storeCount == 1 && rewriteSingleStoreAlloca(AI, Info)) {
                //iter.remove();
                AI.removed = true;
                continue;
            }
            if (Info.OnlyUsedInOneBlock && promoteSingleBlockAlloca(AI, Info)) {
                //iter.remove();
                AI.removed = true;
                continue;
            }
            // insert phi
            HashSet<block> phiExist = new HashSet<>();
            LinkedList<block> W = new LinkedList<>(Info.DefiningBlocks);
            while (!W.isEmpty()) {
                block n = W.pop();
                for (block Y : n.DF)
                    if (!phiExist.contains(Y)) {
                        phi PI = new phi(new register(counter--), AI.irType);
                        PI.creator = AI;
                        Y.push_front(PI);
                        phiExist.add(Y);
                        if (!Info.DefiningBlocks.contains(Y)) {
                            W.add(Y);
                        }
                    }
            }
            /*for (user user : AI.users) {
                if (user instanceof store) {
                    block StoreBB = user.parentBlock;
                    for (block DF : StoreBB.DominatorFrontier) {
                        if (Info.UsingBlocks.contains(DF) && !phiExist.contains(DF)) {
                            phi PI = new phi(new register(), AI.irType);
                            PI.creator = AI;
                            DF.push_front(PI);
                            DF.Phis.add(PI);
                            phiExist.add(DF);
                        }
                    }
                }
            }*/
        }
        if (f.allocas.isEmpty()) return;
        // rename
        HashMap<alloca, entity> IncomingValues = new HashMap<>();
        RegToAlloca = new HashMap<>();
        ValReplace = new HashMap<>();
        // put undefined value
        int allocaCnt = 0;
        for (alloca alloca : f.allocas) {
            // for debug
            alloca.allocaNumber = allocaCnt++;
            // build the map reg to alloca
            RegToAlloca.put(alloca.rd, alloca);
            // undefined initialization
            entity en;
            if (alloca.irType.ptrNum > 0) en = new constant();
            else en = new constant(0);
            IncomingValues.put(alloca, en);
        }

        for (block block : postOrderSequence) {
            block.visited = false;
            block.children = new HashSet<>();
        }
        for (block block : postOrderSequence) {
            if (block != f.rootBlock) block.IDom.children.add(block);
        }
        Rename(f.rootBlock, IncomingValues);
        /*LinkedList<block> bfsQue = new LinkedList<>();
        bfsQue.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            System.out.println(BB + " DF: " + BB.DominatorFrontier + " IDOM: " + BB.IDom);
            for (statement stmt : BB.stmts) {
                if (stmt instanceof user) {
                    if (stmt instanceof store) {
                        stmt.replace(ValReplace);
                        store SI = (store) stmt;
                        if (!RegToAlloca.containsKey(SI.target) || SI.removed) continue;
                        alloca AI = RegToAlloca.get(SI.target);
                        IncomingValues.put(AI, SI.resource);
                        SI.removed = true;
                    } else {
                        load LI = (load) stmt;
                        if (!RegToAlloca.containsKey(LI.ptr)) continue;
                        if (LI.removed) {
                            ValReplace.put(LI.rd, LI.recorder);
                            continue;
                        }
                        alloca AI = RegToAlloca.get(LI.ptr);
                        ValReplace.put(LI.rd, IncomingValues.get(AI));
                        LI.removed = true;
                    }
                } else if (stmt instanceof phi) {
                    phi PI = (phi) stmt;
                    if (PI.creator == null) PI.replace(ValReplace);
                    else {
                        IncomingValues.put(PI.creator, PI.rd);
                    }
                } else {
                    stmt.replace(ValReplace);
                }
            }
            for (block successor : BB.successors) {
                for (phi PI : successor.Phis)
                    if (PI.creator != null) PI.push_back(new entityBlockPair(IncomingValues.get(PI.creator), BB));
                *//*if (!successor.visited) {
                    successor.visited = true;
                    bfsQue.add(successor);
                }*//*
            }
            for (block child : BB.children) {
                bfsQue.add(child);
            }
        }*/
        f.allocas.clear();
        removeDeadStmts();
    }

    private void analysisUseDef(funcDef f) {
        for (register parameterReg : f.parameterRegs) {
            parameterReg.uses = new LinkedList<>();
        }
        LinkedList<statement> W = new LinkedList<>(f.allocas);
        for (IR.alloca alloca : f.allocas) {
            alloca.init();
        }
        LinkedList<block> bfsQue = new LinkedList<>(),que = new LinkedList<>();
        HashSet<block> blockVisited = new HashSet<>();
        bfsQue.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            BB.reachable = true;
            que.add(BB);
            for (statement s = BB.headStatement; s != null; s = s.next) {
                W.add(s);
                s.init();
            }
            for (block successor : BB.successors) {
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQue.add(successor);
                }
            }
        }
        for (statement s : W) {
            if (!s.parentBlock.reachable) continue;
            s.analyseUseDef();
        }
        for (block BB : que) {
            BB.reachable = false;
        }
    }

    // remove redundancy load in single block
    private void promoteGlobalVariable(funcDef f) {
        analysisUseDef(f);
        LinkedList<block> bfsQue = new LinkedList<>();
        HashSet<block> blockVisited = new HashSet<>();
        // global to current value
        HashMap<register,entity> globalToCur =  new HashMap<>();
        bfsQue.add(f.rootBlock);
        blockVisited.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            globalToCur.clear();
            for (statement stmt : BB.globalAssociated) {
                if (stmt instanceof store) {
                    store SI = (store) stmt;
                    globalToCur.put(SI.target,SI.resource);
                } else if (stmt instanceof load){
                    load LI = (load) stmt;
                    if (globalToCur.containsKey(LI.ptr)) {
                        entity en = globalToCur.get(LI.ptr);
                        for (statement use : LI.rd.uses) {
                            use.replaceRegWithEntity(LI.rd,en);
                        }
                        BB.delete_Statement(LI);
                    } else {
                        globalToCur.put(LI.ptr,LI.rd);
                    }
                } else if (stmt instanceof call) {
                    call CI = (call)stmt;
                    globalToCur.keySet().removeAll(CI.funcAssociated.globalVariableUsed);
                }
            }
            globalToCur.clear();
            ListIterator<statement> iter = BB.globalAssociated.listIterator(BB.globalAssociated.size());
            while (iter.hasPrevious()) {
                statement stmt = iter.previous();
                if (stmt instanceof store) {
                    store SI = (store) stmt;
                    if (globalToCur.containsKey(SI.target)) {
                        BB.delete_Statement(SI);
                    } else {
                        globalToCur.put(SI.target, null);
                    }
                } else if (stmt instanceof load){
                    load LI = (load) stmt;
                    if (LI.removed) continue;
                    globalToCur.remove(LI.ptr);
                } else if (stmt instanceof call) {
                    call CI = (call)stmt;
                    globalToCur.keySet().removeAll(CI.funcAssociated.globalVariableUsed);
                }
            }
            for (block successor : BB.successors)
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQue.add(successor);
                }
        }
    }

    public void run() {
        pg.funcDefs.forEach(this::runInFunc);
        //pg.funcDefs.forEach(this::promoteGlobalVariable);
    }
}
