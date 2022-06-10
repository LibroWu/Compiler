package IR;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class ret extends terminalStmt {
    public entity value;
    public IRType irType;
    // for liveness analysis
    @Override
    public void fillSet() {
        if (value instanceof register) use.add((register) value);
    }

    @Override
    public void calcInst() {
        liveOut = new HashSet<>();
        if (next != null) {
            throw new RuntimeException("ret can not have next statement");
        }
        liveIn = new HashSet<>(use);
        liveIn.addAll(liveOut);
    }

    @Override
    public boolean check() {
        return false;
    }

    @Override
    public register getReg() {
        return null;
    }

    //
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
        if (rs == value) {
            value = en;
            if (en instanceof register) ((register) en).uses.add(this);
        }
        return this;
    }

    @Override
    public void activatePropagate(LinkedList<statement> W) {
        if (value instanceof register) {
            register rs = (register) value;
            if (rs.def != null && !rs.def.inWorklist) {
                rs.def.inWorklist = true;
                rs.def.isActivate = true;
                W.add(rs.def);
            }
        }
    }

    @Override
    public statement clone(HashMap<register, entity> ValReplace) {
        entity en = value;
        if (value instanceof register) en = ValReplace.get(value);
        return new ret(en,irType);
    }

    @Override
    public boolean isLoopInvariant(HashSet<block> loop, HashSet<register> live) {
        return false;
    }

    @Override
    public void loopInvariantDelivery(LinkedList<statement> W, LinkedList<statement> promotableStatements, HashSet<block> loop, HashSet<register> live) {

    }
}
