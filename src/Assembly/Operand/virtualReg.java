package Assembly.Operand;

public class virtualReg extends Reg{
    public int index;
    public boolean isAlloc = false;
    public virtualReg(int index) {
        this.index = index;
    }

    @Override
    public String toString() {
        return "%" + index;
    }

    @Override
    public int getNumber() {
        return index+32;
    }
}
