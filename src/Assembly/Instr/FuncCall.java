package Assembly.Instr;
import Assembly.Operand.Reg;
import java.util.BitSet;
import java.util.LinkedList;

public class FuncCall extends Inst {
    public String funcName;
    public LinkedList<Reg> parameters = new LinkedList<>();
    public FuncCall(String funcName) {
        this.funcName = funcName;
    }

    @Override
    public void fillSet() {
        def.set(0, 8);
        def.set(10, 18);
        def.set(28, 32);
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
        return false;
    }

    @Override
    public String toString() {
        return "call " + funcName;
    }
}
