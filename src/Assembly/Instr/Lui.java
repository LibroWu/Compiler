package Assembly.Instr;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class Lui extends Inst {
    public Reg rd;
    public Imm imm;

    public Lui(Reg rd, Imm imm) {
        this.rd = rd;
        this.imm = imm;
    }

    @Override
    public String toString() {
        return "lui " + rd + ", " + imm;
    }
}