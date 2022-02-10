package Assembly.Instr;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

import java.util.BitSet;

public class IType extends Inst {
    public Reg rd, rs;
    public Imm imm;
    public CalCategory op;

    public IType(Reg rd, Reg rs, Imm imm, CalCategory op) {
        this.rd = rd;
        this.rs = rs;
        this.imm = imm;
        this.op = op;
    }

    @Override
    public void fillSet() {
        use.set(rs.getNumber());
        def.set(rd.getNumber());
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
        if (op.ordinal() < 12) return op + "i " + rd + ", " + rs + ", " + imm;
        else {
            assert(imm.value == 0);
            return op + "z " + rd + ", " + rs;
        }
    }
}
