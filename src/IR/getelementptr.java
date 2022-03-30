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
        if (ValReplace.containsKey(rs)) {
            // but here can detect the method call on null
            entity en = ValReplace.get(rs);
            if (en instanceof register) rs =(register) en;
        }
        if (locator1 != null && ValReplace.containsKey(locator1)) locator1 = ValReplace.get(locator1);
        if (locator2 != null && ValReplace.containsKey(locator2)) locator2 = ValReplace.get(locator2);
    }
}
