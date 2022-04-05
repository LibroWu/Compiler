package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class ret extends terminalStmt {
    public entity value;
    public IRType irType;

    public ret(entity value, IRType irType) {
        this.value = value;
        this.irType = irType;
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(value)) value = ValReplace.get(value);
    }

    @Override
    public void init() {

    }

    @Override
    public void analyseUseDef() {
        if (value instanceof register) {
            register rs = (register) value;
            rs.uses.add(this);
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
        if (rs==value) value = en;
        return this;
    }
}
