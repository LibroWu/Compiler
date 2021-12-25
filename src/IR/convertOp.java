package IR;

public class convertOp extends statement{
    public enum convertType{
        TRUNC,ZEXT,SEXT
    }
    public register rd,rs;
    public convertType convert;
    public IRType rsType,rdType;

    public convertOp(register rd,register rs,convertType convert,IRType rdType,IRType rsType) {
        this.rd = rd;
        this.rs = rs;
        this.convert = convert;
        this.rdType = rdType;
        this.rsType = rsType;
    }
}
