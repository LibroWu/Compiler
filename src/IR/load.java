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
        rd.def = this;
    }

    @Override
    public void analyseUseDef() {
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

    @Override
    public void activatePropagate(LinkedList<statement> W) {
        if (ptr.def!=null && !ptr.def.inWorklist) {
            ptr.def.inWorklist = true;
            ptr.def.isActivate = true;
            W.add(ptr.def);
        }
    }

    @Override
    public statement clone(HashMap<register, entity> ValReplace) {
        register shdRd = new register(),shdPtr = ptr;
        ValReplace.put(rd,shdRd);
        if (ValReplace.containsKey(ptr)) shdPtr = (register) ValReplace.get(ptr);
        return new load(shdRd,shdPtr,rsType);
    }
}
