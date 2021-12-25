package IR;

public class alloca extends statement{
    public register rd;
    public int align;
    public IRType irType;
    public alloca(register rd,int align,IRType irType){
        this.rd = rd;
        this.align = align;
        this.irType = irType;
    }
}