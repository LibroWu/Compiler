package Assembly.Operand;

public class virtualReg extends Reg{
    public int index;
    public virtualReg(int index) {
        this.index = index;
    }

    @Override
    public String toString() {
        return "%" + index;
    }
}
