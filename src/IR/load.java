package IR;

public class load extends statement{
    public register rd,ptr;
    public IRType rsType;
    public int align;

    public load(register rd,register ptr,IRType rsType){
        this.rd = rd;
        this.ptr = ptr;
        this.rsType = rsType;
        this.align = rsType.getAlign();
    }
}
