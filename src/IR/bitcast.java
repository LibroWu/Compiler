package IR;

public class bitcast extends statement{
    public register rd,rs;
    public IRType rdType,rsType;

    public bitcast(register rd,register rs,IRType rdType,IRType rsType){
        this.rd = rd;
        this.rs = rs;
        this.rdType = rdType;
        this.rsType = rsType;
    }
}
