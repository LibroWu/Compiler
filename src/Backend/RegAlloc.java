package Backend;

import Assembly.*;
import Assembly.Instr.*;
import Assembly.Operand.Imm;
import Assembly.Operand.PhyReg;
import Assembly.Operand.Reg;
import Assembly.Operand.virtualReg;

public class RegAlloc {
    public AsmPg f;
    private final PhyReg sp, t0, t1, t2, s0, ra, zero, t3, t4;
    private AsmBlock tailBlock;

    private int getLo(int con) {
        return (0xfffff800) * ((con >> 11) & 1) + (con & 2047);
    }

    public RegAlloc(AsmPg asmPg) {
        this.f = asmPg;
        sp = asmPg.phyRegs.get(2);
        t0 = asmPg.phyRegs.get(5);
        t1 = asmPg.phyRegs.get(6);
        t2 = asmPg.phyRegs.get(7);
        t3 = asmPg.phyRegs.get(28);
        t4 = asmPg.phyRegs.get(29);
        ra = asmPg.phyRegs.get(1);
        s0 = asmPg.phyRegs.get(8);
        zero = asmPg.phyRegs.get(0);
    }

    private void loadVirtualReg(AsmBlock b, Inst i, virtualReg r, PhyReg rd) {
        int constValue = r.index * 4;
        if (constValue > 2047 || constValue<-2048) {
            b.insert_before(i, new Li(t4, new Imm(constValue)));
            b.insert_before(i, new RType(t4, t4, sp, Inst.CalCategory.add));
            b.insert_before(i, new Ld(rd, t4, new Imm(0), 4));
            /*if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            b.insert_before(i, new Lui(t4, new Imm(constValue >>> 12)));
            b.insert_before(i, new RType(t4, t4, sp, Inst.CalCategory.add));
            b.insert_before(i, new Ld(rd, t4, new Imm(getLo(constValue)), 4));*/
        } else
        b.insert_before(i, new Ld(rd, sp, new Imm(constValue), 4));
    }

    private void storeVirtualReg(AsmBlock b, Inst i, virtualReg r) {
        int constValue = r.index * 4;
        if (constValue > 2047 || constValue<-2048) {
            b.insert_after(i, new St(t2, t4, new Imm(0), 4));
            b.insert_after(i, new RType(t4, t4, sp, Inst.CalCategory.add));
            b.insert_after(i, new Li(t4, new Imm(constValue)));
            /*if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            b.insert_after(i, new St(t2, t4, new Imm(getLo(constValue)), 4));
            b.insert_after(i, new RType(t4, t4, sp, Inst.CalCategory.add));
            b.insert_after(i, new Lui(t4, new Imm(constValue >>> 12)));*/
        } else
        b.insert_after(i, new St(t2, sp, new Imm(constValue), 4));
    }

    public void work() {
        f.funcS.forEach(this::workInFunc);
    }

    public void workInFunc(AsmFunc func) {
        tailBlock = null;
        AsmBlock rootBlock = func.rootBlock;
        workInBlock(rootBlock);
        Inst headInst = rootBlock.headInst, tailInst = tailBlock.tailInst;
        int constValue = -func.stackLength;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            rootBlock.insert_before(headInst, new Lui(t4, new Imm(constValue >>> 12)));
            rootBlock.insert_before(headInst, new IType(t4, t4, new Imm(getLo(constValue)), Inst.CalCategory.add));
            rootBlock.insert_before(headInst, new RType(sp, sp, t4, Inst.CalCategory.add));
        } else rootBlock.insert_before(headInst, new IType(sp, sp, new Imm(constValue), Inst.CalCategory.add));
        constValue = func.stackLength-8;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            rootBlock.insert_before(headInst, new Lui(t4, new Imm(constValue >>> 12)));
            rootBlock.insert_before(headInst, new RType(t4, sp, t4, Inst.CalCategory.add));
            rootBlock.insert_before(headInst, new St(s0, t4, new Imm(getLo(constValue)), 4));
        } else rootBlock.insert_before(headInst, new St(s0, sp, new Imm(constValue), 4));
        /*rootBlock.insert_before(headInst,
                new St(s0, sp, new Imm(func.stackLength - 8), 4)
        );*/
        constValue = func.stackLength-4;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            rootBlock.insert_before(headInst, new Lui(t4, new Imm(constValue >>> 12)));
            rootBlock.insert_before(headInst, new RType(t4, sp, t4, Inst.CalCategory.add));
            rootBlock.insert_before(headInst, new St(ra, t4, new Imm(getLo(constValue)), 4));
        } else rootBlock.insert_before(headInst, new St(ra, sp, new Imm(constValue), 4));
        /*rootBlock.insert_before(headInst,
                new St(ra, sp, new Imm(func.stackLength - 4), 4)
        );*/
        constValue = func.stackLength;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            rootBlock.insert_before(headInst, new Lui(t4, new Imm(constValue >>> 12)));
            rootBlock.insert_before(headInst, new IType(t4, t4, new Imm(getLo(constValue)), Inst.CalCategory.add));
            rootBlock.insert_before(headInst, new RType(s0, sp, t4, Inst.CalCategory.add));
        } else rootBlock.insert_before(headInst, new IType(s0, sp, new Imm(func.stackLength), Inst.CalCategory.add));
        ;
        /*rootBlock.insert_before(headInst,
                new IType(s0, sp, new Imm(func.stackLength), Inst.CalCategory.add)
        );*/
        constValue = func.stackLength-8;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            tailBlock.insert_before(tailInst, new Lui(t4, new Imm(constValue >>> 12)));
            tailBlock.insert_before(tailInst, new RType(t4, sp, t4, Inst.CalCategory.add));
            tailBlock.insert_before(tailInst, new Ld(s0, t4, new Imm(getLo(constValue)), 4));
        } else tailBlock.insert_before(tailInst, new Ld(s0, sp, new Imm(constValue), 4));
        /*tailBlock.insert_before(tailInst,
                new Ld(s0, sp, new Imm(func.stackLength - 8), 4)
        );*/
        constValue = func.stackLength-4;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            tailBlock.insert_before(tailInst, new Lui(t4, new Imm(constValue >>> 12)));
            tailBlock.insert_before(tailInst, new RType(t4, sp, t4, Inst.CalCategory.add));
            tailBlock.insert_before(tailInst, new Ld(ra, t4, new Imm(getLo(constValue)), 4));
        } else tailBlock.insert_before(tailInst, new Ld(ra, sp, new Imm(constValue), 4));
/*        tailBlock.insert_before(tailInst,
                new Ld(ra, sp, new Imm(func.stackLength - 4), 4)
        );*/
        constValue = func.stackLength;
        if (constValue > 2047 || constValue < -2048) {
            if (((constValue >> 11) & 1)>0)constValue += 1 << 12;
            tailBlock.insert_before(tailInst, new Lui(t4, new Imm(constValue >>> 12)));
            tailBlock.insert_before(tailInst, new IType(t4, t4, new Imm(getLo(constValue)), Inst.CalCategory.add));
            tailBlock.insert_before(tailInst, new RType(sp, sp, t4, Inst.CalCategory.add));
        } else tailBlock.insert_before(tailInst, new IType(sp, sp, new Imm(constValue), Inst.CalCategory.add));
        /*tailBlock.insert_before(tailInst,
                new IType(sp, sp, new Imm(func.stackLength), Inst.CalCategory.add)
        );*/
    }

    public void workInBlock(AsmBlock b) {
        for (Inst i = b.headInst; i != null; i = i.next) {
            if (i instanceof Br) {
                Br br = (Br) i;
                if (br.src1 instanceof virtualReg) {
                    loadVirtualReg(b, i, (virtualReg) br.src1, t0);
                    //b.insert_before(i, loadVirtualReg((virtualReg) br.src1, t0));
                    br.src1 = t0;
                }
                if (br.src2 != null) {
                    loadVirtualReg(b, i, (virtualReg) br.src2, t1);
                    //b.insert_before(i, loadVirtualReg((virtualReg) br.src2, t1));
                    br.src2 = t1;
                }
            } else if (i instanceof IType) {
                IType it = (IType) i;
                if (it.rs instanceof virtualReg) {
                    loadVirtualReg(b, i, (virtualReg) it.rs, t0);
                    //b.insert_before(i, loadVirtualReg((virtualReg) it.rs, t0));
                    it.rs = t0;
                }
                if (it.rd instanceof virtualReg) {
                    storeVirtualReg(b, i, (virtualReg) it.rd);
                    //b.insert_after(i, storeVirtualReg((virtualReg) it.rd));
                    it.rd = t2;
                }
            } else if (i instanceof Li) {
                Li l = (Li) i;
                if (l.rd instanceof virtualReg) //return 0;
                {
                    storeVirtualReg(b, i, (virtualReg) l.rd);
                    //b.insert_after(i, storeVirtualReg((virtualReg) l.rd));
                    l.rd = t2;
                }
            } else if (i instanceof Mv) {
                Mv m = (Mv) i;
                if (m.rs1 instanceof virtualReg) {
                    loadVirtualReg(b, i, (virtualReg) m.rs1, t0);
                    //b.insert_before(i, loadVirtualReg((virtualReg) m.rs1, t0));
                    m.rs1 = t0;
                }
                if (m.rd instanceof virtualReg) {//return x;
                    storeVirtualReg(b, i, (virtualReg) m.rd);
                    //b.insert_after(i, storeVirtualReg((virtualReg) m.rd));
                    m.rd = t2;
                }
            } else if (i instanceof RType) {
                RType r = (RType) i;
                if (r.rs1 instanceof virtualReg) {
                    loadVirtualReg(b, i, (virtualReg) r.rs1, t0);
                    //b.insert_before(i, loadVirtualReg((virtualReg) r.rs1, t0));
                    r.rs1 = t0;
                }
                if (r.rs2 instanceof virtualReg) {
                    loadVirtualReg(b, i, (virtualReg) r.rs2, t1);
                    //b.insert_before(i, loadVirtualReg((virtualReg) r.rs2, t1));
                    r.rs2 = t1;
                }
                if (r.rd instanceof virtualReg) {
                    storeVirtualReg(b, i, (virtualReg) r.rd);
                    //b.insert_after(i, storeVirtualReg((virtualReg) r.rd));
                    r.rd = t2;
                }
            } else if (i instanceof Lui) {
                Lui lui = (Lui) i;
                if (lui.rd instanceof virtualReg) {
                    storeVirtualReg(b, i, (virtualReg) lui.rd);
                    //b.insert_after(i, storeVirtualReg((virtualReg) lui.rd));
                    lui.rd = t2;
                }
            } else if (i instanceof Ret) {
                tailBlock = b;
            } else if (i instanceof Ld) {
                Ld ld = (Ld) i;
                if (ld.addr instanceof virtualReg) {
                    loadVirtualReg(b, i, (virtualReg) ld.addr, t0);
                    //b.insert_before(i, loadVirtualReg((virtualReg) ld.addr, t0));
                    ld.addr = t0;
                }
                if (ld.rd instanceof virtualReg) {
                    storeVirtualReg(b, i, (virtualReg) ld.rd);
                    //b.insert_after(i, storeVirtualReg((virtualReg) ld.rd));
                    ld.rd = t2;
                }
            } else if (i instanceof St) {
                St st = (St) i;
                if (st.addr instanceof virtualReg) {
                    loadVirtualReg(b, i, (virtualReg) st.addr, t0);
                    //b.insert_before(i, loadVirtualReg((virtualReg) st.addr, t0));
                    st.addr = t0;
                }
                if (st.rs instanceof virtualReg) {
                    loadVirtualReg(b, i, (virtualReg) st.rs, t1);
                    //b.insert_before(i, loadVirtualReg((virtualReg) st.rs, t1));
                    st.rs = t1;
                }
            } else if (i instanceof La) {
                La la = (La) i;
                if (la.rd instanceof virtualReg) {
                    storeVirtualReg(b, i, (virtualReg) la.rd);
                    //b.insert_after(i, storeVirtualReg((virtualReg) la.rd));
                    la.rd = t2;
                }
            }
        }
        b.successors.forEach(this::workInBlock);
    }
}
