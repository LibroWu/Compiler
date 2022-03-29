package IR;

import java.util.HashMap;

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
}
