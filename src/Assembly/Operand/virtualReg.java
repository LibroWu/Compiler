package Assembly.Operand;

public class virtualReg extends Reg{
    public int index;
    public boolean isAlloc = false;
    //-1 if is not parameter overflow
    public int overflow = -1;
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
