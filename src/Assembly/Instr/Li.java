package Assembly.Instr;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

import java.util.BitSet;

public class Li extends Inst {
    public Reg rd;
    public Imm imm;

    public Li(Reg rd, Imm imm) {
        this.rd = rd;
        this.imm = imm;
    }

    @Override
    public void fillSet() {
        def.set(rd.getNumber());
        //use.set(0);
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
    public boolean check() {
        return !liveOut.get(rd.getNumber());
    }
    @Override
    public String toString() {
        return "li " + rd + ", " + imm;
    }
}
