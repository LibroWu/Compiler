package IR;

public class alloca extends statement{
    public register rd;
    public int align;
    public IRType irType;
    public alloca(register rd,IRType irType){
        this.rd = rd;
        this.align = irType.getAlign();
        this.irType = irType;
    }
}