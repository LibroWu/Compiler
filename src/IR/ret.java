package IR;

public class ret extends terminalStmt {
    public entity value;
    public IRType irType;
    public ret(entity value,IRType irType) {
        this.value = value;
        this.irType = irType;
    }
}
