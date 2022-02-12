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
        return "call " + funcName;
    }
}
