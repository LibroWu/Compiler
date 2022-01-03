package IR;

public class globalVarDecl extends globalUnit {
    public register rd;
    public IRType rsType;
    public int align;
    public entity rs;
    public String name;

    public globalVarDecl(register rd,IRType rsType,entity rs,int align,String name){
        this.rd = rd;
        this.rsType = rsType;
        this.rs = rs;
        this.align = align;
        this.name = name;
    }
}
