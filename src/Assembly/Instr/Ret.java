package Assembly.Instr;

import java.util.BitSet;

public class Ret extends Inst {

    @Override
    public void fillSet() {
    }

    @Override
    public void calcInst() {
        liveOut = new BitSet(bitSize);
        liveIn =  new BitSet(bitSize);
    }

    @Override
    public String toString() {
        return "ret";
    }
}
