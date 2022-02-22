package Assembly.Instr;

import Assembly.AsmBlock;

import java.util.BitSet;

public class Jp extends Inst {
    public AsmBlock destination;
    public Jp(AsmBlock d) {
        destination = d;
    }

    @Override
    public void fillSet() {}

    @Override
    public void calcInst() {
        liveOut = new BitSet(bitSize);
        if (destination.headInst != null) {
            liveOut.or(destination.headInst.liveIn);
        }
        liveIn  = (BitSet) liveOut.clone();
    }

    @Override
    public boolean check(boolean eliminateSwitch) {
        return false;
    }

    @Override
    public String toString() {
        return "j " + destination;
    }
}
