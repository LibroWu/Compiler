package Assembly.Instr;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class St extends Inst {
    public Reg rs, addr;
    public Imm offset;

    public St(Reg rs, Reg addr, Imm offset) {
        this.rs = rs;
        this.addr = addr;
        this.offset = offset;
    }
    @Override
    public String toString() {
        return "sw " + rs + ", " + offset + "(" + addr + ")";
    }
}
