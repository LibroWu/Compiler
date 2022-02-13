package Assembly.Instr;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

import java.util.BitSet;

public class Lui extends Inst {
    public Reg rd;
    public Imm imm;

    public Lui(Reg rd, Imm imm) {
        this.rd = rd;
        this.imm = imm;
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
    public boolean check(BitSet liveOut) {
        return !liveOut.get(rd.getNumber())&& rd.getNumber()>=32;
    }
    @Override
    public String toString() {
        return "lui " + rd + ", " + imm;
    }
}