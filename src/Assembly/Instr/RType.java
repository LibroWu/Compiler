package Assembly.Instr;

import Assembly.Operand.Reg;
import Util.error.internalError;
import Util.position;

import java.util.BitSet;

public class RType extends Inst {
    public Reg rd, rs1, rs2;
    public CalCategory op;

    public RType(Reg rd, Reg rs1, Reg rs2, CalCategory op) {
        this.rd = rd;
        this.rs1 = rs1;
        this.rs2 = rs2;
        this.op = op;
    }

    @Override
    public void fillSet() {
        use.set(rs1.getNumber());
        use.set(rs2.getNumber());
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
    public boolean check(boolean eliminateSwitch) {
        return !liveOut.get(rd.getNumber())&& (eliminateSwitch || rd.getNumber()>=32);
    }
    @Override
    public String toString() {
        if (op.ordinal() < 12) return op + " " + rd + ", " + rs1 + ", " + rs2;
        else throw new internalError("not correct op for RType", new position(0, 0));
    }
}
