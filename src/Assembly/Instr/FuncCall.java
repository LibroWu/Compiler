package Assembly.Instr;

import java.util.BitSet;

public class FuncCall extends Inst {
    public String funcName;

    public FuncCall(String funcName) {
        this.funcName = funcName;
    }

    @Override
    public void fillSet() {
    }

    @Override
    public void calcInst() {
        liveOut = new BitSet(bitSize);
        if (next != null) {
            liveOut.or(next.liveIn);
        }
        liveIn  = (BitSet) liveOut.clone();
    }

    @Override
    public String toString() {
        return "call " + funcName;
    }
}
