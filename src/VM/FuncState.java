package VM;
import Assembly.Instr.*;
import Assembly.Operand.Imm;
import Assembly.Operand.PhyReg;
import Backend.CodeGen.AsmOptimizer;
import Backend.CodeGen.AsmPrinter;
import Backend.CodeGen.InstrSelector;
import Backend.RegisterAllocation.LivenessAnalysis;
import Backend.RegisterAllocation.RegAlloc;
import IR.*;
import Assembly.*;

import java.io.PrintStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class FuncState {
    public funcDef f;
    public AsmFunc asmF;
    // todo profile

    // todo state
    public boolean isAsm;
    public int funcCallCnt;

    // dependence
    private HashSet<FuncState> directedCall,downstream,upstream,downstreamInit;
    private HashSet<register> globalWr;

    public void tryIROpt(){

    }

    public void tryAsm(AsmPg asmPg){
        if (!isAsm && funcCallCnt>=5) {
            toAsm(asmPg);
            isAsm = true;
        }
    }

    public boolean canRunAsm(){
        return downstream.size()==0 && isAsm;
    }

    public void toAsm(AsmPg asmPg){
        for (FuncState funcState : upstream) {
            funcState.downstream.remove(this);
        }
        asmF = new InstrSelector(asmPg).visitFuncDef(f);
        LivenessAnalysis livenessAnalysis = new LivenessAnalysis(asmPg);
        livenessAnalysis.collectFunc(asmF);
        livenessAnalysis.workInFunc(asmF);
        new RegAlloc(asmPg).workInFunc(asmF);
        new AsmOptimizer(asmPg).workInFunc(asmF);
    }

    public void runAsm(AsmPrinter asmPrinter,HashMap<String,Integer> globalVars,HashMap<register,Integer> vrMap,int[] regs){
        // todo global vars
        PrintStream out = asmPrinter.out;
        out.println("\t.text\n" +
                "\t.globl main\n" +
                "\t.p2align\t2"+"\n" +
                "\t.type\tmain,@function");
        for (FuncState funcState : downstreamInit) {
            asmPrinter.printFunc(funcState.asmF);
        }
        asmPrinter.printFunc(asmF);
        AsmFunc asmMain = new AsmFunc("main");
        AsmBlock asmBlock = new AsmBlock(0);
        asmMain.rootBlock = asmMain.tailBlock = asmBlock;
        asmPrinter.printFunc(asmMain);
        AsmPg asmPg = asmPrinter.asmPg;
        PhyReg sp = asmPg.phyRegs.get(2),ra = asmPg.phyRegs.get(1),s0=asmPg.phyRegs.get(8),t0=asmPg.phyRegs.get(5),zero = asmPg.phyRegs.get(0),t1=asmPg.phyRegs.get(6);
        asmBlock.push_back(new IType(sp,sp,new Imm(-8), Inst.CalCategory.add));
        asmBlock.push_back(new St(ra,sp,new Imm(4),4));
        asmBlock.push_back(new St(s0,sp,new Imm(0),4));
        int parameterCnt = 0;
        FuncCall funcCall = new FuncCall(f.funcId);
        for (register parameterReg : f.parameterRegs) {
            int res = vrMap.get(parameterReg);
            if (parameterCnt < 8) {
                regs[parameterCnt+10] = res;
            } else {
                asmBlock.push_back(new IType(t0,zero,new Imm(res), Inst.CalCategory.add));
                asmBlock.push_back(new St(t0, sp, new Imm((parameterCnt - 8) * 4), 4));
            }
            parameterCnt++;
        }
        asmBlock.push_back(funcCall);
        asmBlock.push_back(new Ld(ra,sp,new Imm(4),4));
        asmBlock.push_back(new Ld(s0,sp,new Imm(0),4));
        asmBlock.push_back(new IType(sp,sp,new Imm(8), Inst.CalCategory.add));
        int cnt = globalWr.size();
        int constValue = cnt*4;
        HashMap<register,Integer> gvOffset = new HashMap<>();
        for (register gv : globalWr) {
            asmBlock.push_back(new La(t0,gv.label));
            asmBlock.push_back(new Ld(t0,t0,new Imm(0),4));
            if (constValue > 2047 || constValue < -2048) {
                if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                asmBlock.push_back(new Lui(t1, new Imm(constValue >>> 12)));
                asmBlock.push_back(new IType(t1, t1, new Imm((0xfffff800) * ((constValue >> 11) & 1) + (constValue & 2047)), Inst.CalCategory.add));
                asmBlock.push_back(new RType(t1,sp,t1, Inst.CalCategory.sub));
                asmBlock.push_back(new St(t0,t1,new Imm(0),4));
            } else
                asmBlock.push_back(new St(t0,sp,new Imm(-constValue),4));
            gvOffset.put(gv,constValue);
            constValue-=4;
        }
        asmBlock.push_back(new Ret());
        new LivenessAnalysis(asmPg).collectFunc(asmMain);
        asmPrinter.printFunc(asmMain);
        for (AsmGlobal global : asmPg.globals) {
            if (!global.isString) {
                global.word = ""+globalVars.get(global.label);
            }
        }
        out.println(".data");
        asmPg.globals.forEach(out::println);
        // todo system call run Charon
        // todo manage the global variants
    }
    public void streamAnalysis(){
        HashSet<FuncState>  funcStateVisited = new HashSet<>();
        LinkedList<FuncState> bfsQue = new LinkedList<>();
        bfsQue.add(this);
        funcStateVisited.add(this);
        while (!bfsQue.isEmpty()){
            FuncState funcState = bfsQue.pop();
            if (funcState!=this) {
                globalWr.addAll(funcState.globalWr);
                downstream.add(funcState);
                funcState.upstream.add(this);
            }
            for (FuncState state : funcState.directedCall) {
                if (!funcStateVisited.contains(state)){
                    funcStateVisited.add(state);
                    bfsQue.add(state);
                }
            }
        }
        downstreamInit = new HashSet<>(downstream);
    }

    public void funcAnalysis(HashMap<String, FuncState> funcStates,HashMap<register,Integer> globalVars){
        HashSet<block> blockVisited = new HashSet<>();
        LinkedList<block> bfsQue = new LinkedList<>();
        bfsQue.add(f.rootBlock);
        blockVisited.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            for (statement stmt = BB.headStatement;stmt!=null; stmt=stmt.next)  {
                if (stmt instanceof call) {
                    call c = (call) stmt;
                    if (!funcStates.containsKey(c.funcName)) continue;
                    directedCall.add(funcStates.get(c.funcName));
                }
                if (stmt instanceof store) {
                    store st = (store) stmt;
                    if (globalVars.containsKey(st.target)) globalWr.add(st.target);
                }
                //register rd = stmt.getReg();
                //if (rd!=null && globalVars.containsKey(rd)) globalWr.add(rd);
            }
            for (block successor : BB.successors) {
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQue.add(successor);
                }
            }
        }
    }

    public FuncState(funcDef f){
        this.f = f;
        isAsm = false;
        directedCall = new HashSet<>();
        downstream = new HashSet<>();
        upstream = new HashSet<>();
        globalWr = new HashSet<>();
        funcCallCnt = 0;
    }
}
