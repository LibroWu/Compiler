package Assembly.Instr;
import Assembly.Operand.Reg;
import java.util.BitSet;
import java.util.LinkedList;

public class FuncCall extends Inst {
    public String funcName;
    public LinkedList<Reg> parameters = new LinkedList<>();
    public boolean hasRet = false;
    public FuncCall(String funcName) {
        this.funcName = funcName;
    }

    @Override
    public void fillSet() {
        use.set(10,10+Math.min(parameters.size()-1,7));
        //if (hasRet) def.set(10);
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
        return false;
    }

    @Override
    public String toString() {
        return "call " + funcName;
    }
}
