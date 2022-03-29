package IR;

import java.util.HashMap;

public class getelementptr extends statement{
    public register rd,rs;
    public entity locator1,locator2;
    public IRType rsType;

    public getelementptr(register rd,register rs,IRType rsType,entity locator1,entity locator2){
        this.rd = rd;
        this.rs = rs;
        this.locator1 = locator1;
        this.locator2 = locator2;
        this.rsType = rsType;
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(rs)) rs = (register) ValReplace.get(rs);
    }
}
