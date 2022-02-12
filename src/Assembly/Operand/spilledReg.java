package Assembly.Operand;

public class spilledReg extends Reg{
    public int offset;
    public spilledReg(int offset) {
        this.offset = offset;
    }

    @Override
    public String toString() {
        return "error";
    }

    @Override
    public int getNumber() {
        return 0;
    }
}
