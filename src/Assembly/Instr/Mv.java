package Assembly.Instr;

import Assembly.Operand.Reg;

import java.util.BitSet;

public class Mv extends Inst {
    public Reg rd, rs1;

    public Mv(Reg rd, Reg rs1) {
        this.rd = rd;
        this.rs1 = rs1;
    }

    @Override
    public void fillSet() {
        def.set(rd.getNumber());
        use.set(rs1.getNumber());
    }

    @Override
    public void calcInst() {
        liveOut = new BitSet(bitSize);
        if (next != null) {
            liveOut.or(next.liveIn);
        }
        liveIn = (BitSet) use.clone();
        BitSet tmpBitSet = (BitSet) liveOut.clone();
        tmpBitSet.andNot(def);
        liveIn.or(tmpBitSet);
    }

    @Override
    public String toString() {
        return "mv " + rd + ", " + rs1;
    }
}

