package Assembly.Instr;

import Assembly.Operand.Imm;
import Assembly.Operand.*;

public class Ld extends Inst {
    public Reg rd, addr;
    public Imm offset;
    public int byteLen;

    public Ld(Reg rd, Reg addr, Imm offset,int byteLen) {
        this.rd = rd;
        this.addr = addr;
        this.offset = offset;
        this.byteLen = byteLen;
    }

    @Override
    public String toString() {
        String op;
        switch (byteLen) {
            case 4: op = "lw ";break;
            case 2: op = "lh ";break;
            case 1: op = "lb ";break;
            default: op = null;
        }
        return op + rd + ", " + offset + "(" + addr + ")";
    }
}
