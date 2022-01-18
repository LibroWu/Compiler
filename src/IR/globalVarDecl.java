package IR;

public class globalVarDecl extends globalUnit {
    public register rd;
    public IRType rsType;
    public int align;
    public entity rs;
    public String name;

    public globalVarDecl(register rd,IRType rsType,entity rs,String name){
        this.rd = rd;
        this.rsType = rsType;
        this.rs = rs;
        this.align = rsType.getAlign();
        this.name = name;
    }
}
