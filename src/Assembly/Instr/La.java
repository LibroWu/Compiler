package Assembly.Instr;

import Assembly.Operand.Reg;

public class La extends Inst{
    public Reg rd;
    public String symbol;

    public La(Reg rd,String symbol){
        this.rd = rd;
        this.symbol = symbol;
    }

    @Override
    public String toString() {
        return "la "+rd+", "+symbol;
    }
}
