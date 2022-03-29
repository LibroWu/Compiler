package IR;

import java.util.HashMap;

public class convertOp extends statement{
    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(rs)) rs = ValReplace.get(rs);
    }

    public enum convertType{
        TRUNC,ZEXT,SEXT
    }
    public register rd;
    public entity rs;
    public convertType convert;
    public IRType rsType,rdType;

    public convertOp(register rd,entity rs,convertType convert,IRType rdType,IRType rsType) {
        this.rd = rd;
        this.rs = rs;
        this.convert = convert;
        this.rdType = rdType;
        this.rsType = rsType;
    }
}
