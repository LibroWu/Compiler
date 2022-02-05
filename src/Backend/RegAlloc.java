package Backend;

import Assembly.*;
import Assembly.Instr.*;
import Assembly.Operand.Imm;
import Assembly.Operand.PhyReg;
import Assembly.Operand.Reg;
import Assembly.Operand.virtualReg;

public class RegAlloc {
    public AsmPg f;
    private final PhyReg sp, t0, t1, t2, s0, ra, zero;
    private AsmBlock tailBlock;

    public RegAlloc(AsmPg asmPg) {
        this.f = asmPg;
        sp = asmPg.phyRegs.get(2);
        t0 = asmPg.phyRegs.get(5);
        t1 = asmPg.phyRegs.get(6);
        t2 = asmPg.phyRegs.get(7);
        ra = asmPg.phyRegs.get(1);
        s0 = asmPg.phyRegs.get(8);
        zero = asmPg.phyRegs.get(0);
    }

    private Inst loadVirtualReg(virtualReg r, PhyReg rd) {
        return new Ld(rd, sp, new Imm(r.index * 4));
    }

    private Inst storeVirtualReg(virtualReg r) {
        return new St(t2, sp, new Imm(r.index * 4));
    }

    public void work() {
        f.funcS.forEach(this::workInFunc);
    }

    public void workInFunc(AsmFunc func) {
        tailBlock = null;
        workInBlock(func.rootBlock);
        func.rootBlock.insert_before(func.rootBlock.headInst,
                new IType(s0, sp, new Imm(func.stackLength), Inst.CalCategory.add)
        );
        func.rootBlock.insert_before(func.rootBlock.headInst,
                new St(s0, sp, new Imm(func.stackLength - 8))
        );
        func.rootBlock.insert_before(func.rootBlock.headInst,
                new St(ra, sp, new Imm(func.stackLength - 4))
        );
        func.rootBlock.insert_before(func.rootBlock.headInst,
                new IType(sp, sp, new Imm(func.stackLength * -1), Inst.CalCategory.add)
        );
        tailBlock.insert_before(tailBlock.tailInst,
                new Ld(s0, sp, new Imm(func.stackLength - 8))
        );
        tailBlock.insert_before(tailBlock.tailInst,
                new Ld(ra, sp, new Imm(func.stackLength - 4))
        );
        tailBlock.insert_before(tailBlock.tailInst,
                new IType(sp, sp, new Imm(func.stackLength), Inst.CalCategory.add)
        );
    }

    public void workInBlock(AsmBlock b) {
        for (Inst i = b.headInst; i != null; i = i.next) {
            if (i instanceof Br br) {
                if (br.src1 instanceof virtualReg) {
                    b.insert_before(i, loadVirtualReg((virtualReg) br.src1, t0));
                    br.src1 = t0;
                }
                if (br.src2 != null) {
                    b.insert_before(i, loadVirtualReg((virtualReg) br.src2, t1));
                    br.src2 = t1;
                }
            } else if (i instanceof IType it) {
                if (it.rs instanceof virtualReg) {
                    b.insert_before(i, loadVirtualReg((virtualReg) it.rs, t0));
                    it.rs = t0;
                }
                if (it.rd instanceof virtualReg) {
                    b.insert_after(i, storeVirtualReg((virtualReg) it.rd));
                    it.rd = t2;
                }
            } else if (i instanceof Li l) {
                if (l.rd instanceof virtualReg) //return 0;
                    b.insert_after(i, storeVirtualReg((virtualReg) l.rd));
                l.rd = t2;
            } else if (i instanceof Mv m) {
                if (m.rs1 instanceof virtualReg) {
                    b.insert_before(i, loadVirtualReg((virtualReg) m.rs1, t0));
                    m.rs1 = t0;
                }
                if (m.rd instanceof virtualReg) {//return x;
                    b.insert_after(i, storeVirtualReg((virtualReg) m.rd));
                    m.rd = t2;
                }
            } else if (i instanceof RType r) {
                if (r.rs1 instanceof virtualReg) {
                    b.insert_before(i, loadVirtualReg((virtualReg) r.rs1, t0));
                    r.rs1 = t0;
                }
                if (r.rs2 instanceof virtualReg) {
                    b.insert_before(i, loadVirtualReg((virtualReg) r.rs2, t1));
                    r.rs2 = t1;
                }
                if (r.rd instanceof virtualReg) {
                    b.insert_after(i, storeVirtualReg((virtualReg) r.rd));
                    r.rd = t2;
                }
            } else if (i instanceof Lui lui) {
                if (lui.rd instanceof virtualReg) {
                    b.insert_after(i, storeVirtualReg((virtualReg) lui.rd));
                    lui.rd = t2;
                }
            } else if (i instanceof Ret) {
                tailBlock = b;
            } else if (i instanceof Ld ld) {
                if (ld.addr instanceof virtualReg) {
                    b.insert_before(i,loadVirtualReg((virtualReg) ld.addr, t0));
                    ld.addr = t0;
                }
                if (ld.rd instanceof virtualReg) {
                    b.insert_after(i,storeVirtualReg((virtualReg) ld.rd));
                    ld.rd = t2;
                }
            } else if (i instanceof St st) {
                if (st.addr instanceof virtualReg) {
                    b.insert_before(i,loadVirtualReg((virtualReg) st.addr, t0));
                    st.addr = t0;
                }
                if (st.rs instanceof virtualReg) {
                    b.insert_before(i,loadVirtualReg((virtualReg) st.rs, t1));
                    st.rs = t1;
                }
            } else if (i instanceof La la) {
                if (la.rd instanceof virtualReg) {
                    b.insert_after(i,storeVirtualReg((virtualReg) la.rd));
                    la.rd = t2;
                }
            }
        }
        b.successors.forEach(this::workInBlock);
    }
}
