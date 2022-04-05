package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class convertOp extends statement{
    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(rs)) rs = ValReplace.get(rs);
    }

    @Override
    public void init() {
        rd.uses = new LinkedList<>();
    }

    @Override
    public void analyseUseDef() {
        rd.def = this;
        if (rs instanceof register) {
            register r = (register) rs;
            r.uses.add(this);
        }
    }

    @Override
    public boolean isResConst() {
        return false;
    }

    @Override
    public void removeStmt(LinkedList<statement> W) {
        // will not call this function?
    }

    @Override
    public statement replaceRegWithEntity(register rs, entity en) {
        if (this.rs==rs) this.rs = en;
        return this;
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
