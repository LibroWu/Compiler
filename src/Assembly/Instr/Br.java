package Assembly.Instr;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;

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
    public String toString() {
        if (src2==null) {
            return "b"+comOp+"z " + src1.toString() + ", "+ destination.toString();
        }else return "b"+comOp+" " + src1.toString() + ", "+src2.toString() + ", " + destination.toString();
    }
}
