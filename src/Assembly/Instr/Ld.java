package Assembly.Instr;

import Assembly.Operand.Imm;
import Assembly.Operand.*;

import java.util.BitSet;

public class Ld extends Inst {
    public Reg rd, addr;
    public Imm offset;
    public int byteLen;

    public Ld(Reg rd, Reg addr, Imm offset, int byteLen) {
        this.rd = rd;
        this.addr = addr;
        this.offset = offset;
        this.byteLen = byteLen;
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
        return !liveOut.get(rd.getNumber())&& rd.getNumber()>=32;
    }
    @Override
    public void fillSet() {
        use.set(addr.getNumber());
        def.set(rd.getNumber());
    }

    @Override
    public String toString() {
        String op;
        switch (byteLen) {
            case 4:
                op = "lw ";
                break;
            case 2:
                op = "lh ";
                break;
            case 1:
                op = "lb ";
                break;
            default:
                op = null;
        }
        return op + rd + ", " + offset + "(" + addr + ")";
    }
}
