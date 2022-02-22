package Assembly.Instr;

import java.util.BitSet;

public class Ret extends Inst {

    @Override
    public void fillSet() {
    }

    @Override
    public void calcInst() {
        liveOut = (BitSet) use.clone();
        liveIn =  (BitSet) use.clone();
    }

    @Override
    public boolean check(boolean eliminateSwitch) {
        return false;
    }

    @Override
    public String toString() {
        return "ret";
    }
}
