package Assembly.Instr;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

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
