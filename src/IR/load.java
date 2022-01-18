package IR;

public class load extends statement{
    public register rd,ptr;
    public IRType rdType;
    public int align;

    public load(register rd,register ptr,IRType rdType){
        this.rd = rd;
        this.ptr = ptr;
        this.rdType = rdType;
        this.align = rdType.getAlign();
    }
}
