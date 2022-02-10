package Assembly.Instr;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;
import Assembly.Operand.virtualReg;

import java.util.BitSet;

public class Br extends Inst {
    public Reg src1,src2;
    public AsmBlock destination;
    public CompareCategory comOp = null;

    public Br(CompareCategory comOp,Reg src1,Reg src2, AsmBlock destination) {
        this.comOp = comOp;
        this.src1 = src1;
        this.src2 = src2;
        this.destination = destination;
    }

    @Override
    public void fillSet() {
        use.set(src1.getNumber());
        use.set(src2.getNumber());
    }

    @Override
    public void calcInst() {
        liveOut = new BitSet(bitSize);
        if (next !=null) {
            liveOut.or(next.liveIn);
        }
        if (destination!=null) {
            liveOut.or(destination.headInst.liveIn);
        }
        liveIn = (BitSet) use.clone();
        BitSet tmpBitSet = (BitSet) liveOut.clone();
        tmpBitSet.andNot(def);
        liveIn.or(tmpBitSet);
    }

    @Override
    public String toString() {
        if (src2==null) {
            return "b"+comOp+"z " + src1.toString() + ", "+ destination.toString();
        }else return "b"+comOp+" " + src1.toString() + ", "+src2.toString() + ", " + destination.toString();
    }
}
