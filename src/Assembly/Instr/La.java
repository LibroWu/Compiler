package Assembly.Instr;

import Assembly.Operand.Reg;

import java.util.BitSet;

public class La extends Inst{
    public Reg rd;
    public String symbol;

    public La(Reg rd,String symbol){
        this.rd = rd;
        this.symbol = symbol;
    }

    @Override
    public void fillSet() {
        def.set(rd.getNumber());
    }
    @Override
    public void calcInst() {
        liveOut = new BitSet(bitSize);
        if (next != null) {
            liveOut.or(next.liveIn);
        }
        liveIn = (BitSet) liveOut.clone();
        liveIn.andNot(def);
    }
    @Override
    public String toString() {
        return "la "+rd+", "+symbol;
    }
}
