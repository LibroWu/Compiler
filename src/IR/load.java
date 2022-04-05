package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class load extends user {
    public register rd, ptr;
    public IRType rsType;
    public int align;
    public entity recorder = null;

    public load(register rd, register ptr, IRType rsType) {
        this.rd = rd;
        this.ptr = ptr;
        this.rsType = rsType;
        this.align = rsType.reducePtr().getAlign();
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (recorder != null && ValReplace.containsKey(recorder)) recorder = ValReplace.get(recorder);
    }

    @Override
    public void init() {
        rd.uses = new LinkedList<>();
    }

    @Override
    public void analyseUseDef() {
        rd.def = this;
        if (ptr.label == null) ptr.uses.add(this);
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
        if (rs == ptr) throw new RuntimeException("load pointer can not be converted to constant");
        return this;
    }
}
