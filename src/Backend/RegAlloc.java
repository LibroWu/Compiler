package Backend;

import Assembly.*;
import Assembly.Instr.*;
import Assembly.Operand.Imm;
import Assembly.Operand.PhyReg;

public class RegAlloc {
    public AsmPg asmPg;
    private final PhyReg sp, t0, t1, t2, s0, ra, zero, t3, t6;
    private AsmBlock tailBlock;
    private LivenessAnalysis livenessAnalysis;
    private GraphColoring graphColoring;

    private int getLo(int con) {
        return (0xfffff800) * ((con >> 11) & 1) + (con & 2047);
    }

    public RegAlloc(AsmPg asmPg) {
        this.asmPg = asmPg;
        sp = asmPg.phyRegs.get(2);
        t0 = asmPg.phyRegs.get(5);
        t1 = asmPg.phyRegs.get(6);
        t2 = asmPg.phyRegs.get(7);
        t3 = asmPg.phyRegs.get(28);
        t6 = asmPg.phyRegs.get(31);
        ra = asmPg.phyRegs.get(1);
        s0 = asmPg.phyRegs.get(8);
        zero = asmPg.phyRegs.get(0);
        livenessAnalysis = new LivenessAnalysis(asmPg);
        livenessAnalysis.collect();
    }

    public void work() {
        asmPg.funcS.forEach(this::workInFunc);
    }

    public void workInFunc(AsmFunc func) {
        new GraphColoring(asmPg,func,livenessAnalysis).Main();
        tailBlock = func.blockList.get(func.blockList.size()-1);
        AsmBlock rootBlock = func.rootBlock;
        Inst headInst = rootBlock.headInst, tailInst = tailBlock.tailInst;
        int constValue = -func.stackLength;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            rootBlock.insert_before(headInst, new Lui(t6, new Imm(constValue >>> 12)));
            rootBlock.insert_before(headInst, new IType(t6, t6, new Imm(getLo(constValue)), Inst.CalCategory.add));
            rootBlock.insert_before(headInst, new RType(sp, sp, t6, Inst.CalCategory.add));
        } else rootBlock.insert_before(headInst, new IType(sp, sp, new Imm(constValue), Inst.CalCategory.add));
        constValue = func.stackLength-8;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            rootBlock.insert_before(headInst, new Lui(t6, new Imm(constValue >>> 12)));
            rootBlock.insert_before(headInst, new RType(t6, sp, t6, Inst.CalCategory.add));
            rootBlock.insert_before(headInst, new St(s0, t6, new Imm(getLo(constValue)), 4));
        } else rootBlock.insert_before(headInst, new St(s0, sp, new Imm(constValue), 4));
        /*rootBlock.insert_before(headInst,
                new St(s0, sp, new Imm(func.stackLength - 8), 4)
        );*/
        constValue = func.stackLength-4;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            rootBlock.insert_before(headInst, new Lui(t6, new Imm(constValue >>> 12)));
            rootBlock.insert_before(headInst, new RType(t6, sp, t6, Inst.CalCategory.add));
            rootBlock.insert_before(headInst, new St(ra, t6, new Imm(getLo(constValue)), 4));
        } else rootBlock.insert_before(headInst, new St(ra, sp, new Imm(constValue), 4));
        /*rootBlock.insert_before(headInst,
                new St(ra, sp, new Imm(func.stackLength - 4), 4)
        );*/
        constValue = func.stackLength;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            rootBlock.insert_before(headInst, new Lui(t6, new Imm(constValue >>> 12)));
            rootBlock.insert_before(headInst, new IType(t6, t6, new Imm(getLo(constValue)), Inst.CalCategory.add));
            rootBlock.insert_before(headInst, new RType(s0, sp, t6, Inst.CalCategory.add));
        } else rootBlock.insert_before(headInst, new IType(s0, sp, new Imm(func.stackLength), Inst.CalCategory.add));
        ;
        /*rootBlock.insert_before(headInst,
                new IType(s0, sp, new Imm(func.stackLength), Inst.CalCategory.add)
        );*/
        constValue = func.stackLength-8;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            tailBlock.insert_before(tailInst, new Lui(t6, new Imm(constValue >>> 12)));
            tailBlock.insert_before(tailInst, new RType(t6, sp, t6, Inst.CalCategory.add));
            tailBlock.insert_before(tailInst, new Ld(s0, t6, new Imm(getLo(constValue)), 4));
        } else tailBlock.insert_before(tailInst, new Ld(s0, sp, new Imm(constValue), 4));
        /*tailBlock.insert_before(tailInst,
                new Ld(s0, sp, new Imm(func.stackLength - 8), 4)
        );*/
        constValue = func.stackLength-4;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            tailBlock.insert_before(tailInst, new Lui(t6, new Imm(constValue >>> 12)));
            tailBlock.insert_before(tailInst, new RType(t6, sp, t6, Inst.CalCategory.add));
            tailBlock.insert_before(tailInst, new Ld(ra, t6, new Imm(getLo(constValue)), 4));
        } else tailBlock.insert_before(tailInst, new Ld(ra, sp, new Imm(constValue), 4));
/*        tailBlock.insert_before(tailInst,
                new Ld(ra, sp, new Imm(func.stackLength - 4), 4)
        );*/
        constValue = func.stackLength;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            tailBlock.insert_before(tailInst, new Lui(t6, new Imm(constValue >>> 12)));
            tailBlock.insert_before(tailInst, new IType(t6, t6, new Imm(getLo(constValue)), Inst.CalCategory.add));
            tailBlock.insert_before(tailInst, new RType(sp, sp, t6, Inst.CalCategory.add));
        } else tailBlock.insert_before(tailInst, new IType(sp, sp, new Imm(constValue), Inst.CalCategory.add));
        /*tailBlock.insert_before(tailInst,
                new IType(sp, sp, new Imm(func.stackLength), Inst.CalCategory.add)
        );*/
    }

}
