package Assembly.Instr;

import java.util.BitSet;

public class Ret extends Inst {

    @Override
    public void fillSet() {
        use.set(1,3);
        use.set(8);
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
