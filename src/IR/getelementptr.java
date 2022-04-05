package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class getelementptr extends statement {
    public register rd, rs;
    public entity locator1, locator2;
    public IRType rsType;

    public getelementptr(register rd, register rs, IRType rsType, entity locator1, entity locator2) {
        this.rd = rd;
        this.rs = rs;
        this.locator1 = locator1;
        this.locator2 = locator2;
        this.rsType = rsType;
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(rs)) {
            // but here can detect the method call on null
            entity en = ValReplace.get(rs);
            if (en instanceof register) rs = (register) en;
        }
        if (locator1 != null && ValReplace.containsKey(locator1)) locator1 = ValReplace.get(locator1);
        if (locator2 != null && ValReplace.containsKey(locator2)) locator2 = ValReplace.get(locator2);
    }

    @Override
    public void init() {
        rd.uses = new LinkedList<>();
        rd.def = this;
    }

    @Override
    public void analyseUseDef() {
        if (rs.label==null)rs.uses.add(this);
        if (locator1 instanceof register) {
            register loc = (register) locator1;
            loc.uses.add(this);
        }
        if (locator2 instanceof register) {
            register loc = (register) locator2;
            loc.uses.add(this);
        }
    }

    @Override
    public boolean isResConst() {
        return false;
    }

    @Override
    public void removeStmt(LinkedList<statement> W) {
        // will not call this function
    }

    @Override
    public statement replaceRegWithEntity(register rs, entity en) {
        if (this.rs == rs) throw new RuntimeException("getelementptr's rs can not be converted to constant");
        if (locator1 == rs) locator1 = en;
        if (locator2 == rs) locator2 = en;
        return this;
    }
}
