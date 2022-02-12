package Assembly.Instr;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

import java.util.BitSet;

public class St extends Inst {
    public Reg rs, addr;
    public Imm offset;
    public int byteLen;

    public St(Reg rs, Reg addr, Imm offset,int byteLen) {
        this.rs = rs;
        this.addr = addr;
        this.offset = offset;
        this.byteLen = byteLen;
    }

    @Override
    public void fillSet() {
        use.set(rs.getNumber());
        use.set(addr.getNumber());
    }
    @Override
    public void calcInst() {
        liveOut = new BitSet(bitSize);
        if (next != null) {
            liveOut.or(next.liveIn);
        }
        liveIn = (BitSet) use.clone();
        liveIn.or(liveOut);
    }

    @Override
    public boolean check() {
        return false;
    }

    @Override
    public String toString() {
        String op;
        switch (byteLen) {
            case 1: op = "sb ";break;
            case 2: op = "sh "; break;
            case 4: op = "sw ";break;
            default:op="";
        }
        return op + rs + ", " + offset + "(" + addr + ")";
    }
}
