package Assembly.Instr;

public class FuncCall extends Inst{
    public String funcName;

    public FuncCall(String funcName) {
        this.funcName = funcName;
    }
    @Override
    public String toString() {
        return "call "+funcName;
    }
}
