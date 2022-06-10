package IR;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class store extends user {
    public register target;
    public entity resource;
    public int align;
    public IRType resourceType;

    @Override
    public boolean isLoopInvariant(HashSet<block> loop, HashSet<register> live) {
        return false;
    }

    @Override
    public void loopInvariantDelivery(LinkedList<statement> W, LinkedList<statement> promotableStatements, HashSet<block> loop, HashSet<register> live) {

    }

    // for liveness analysis
    @Override
    public void fillSet() {
        use.add(target);
        if (resource instanceof register) use.add((register) resource);
    }

    @Override
    public void calcInst() {
        liveOut = new HashSet<>();
        if (next != null) {
            liveOut.addAll(next.liveIn);
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
    public store(entity resource, register target, IRType resourceType) {
        this.resource = resource;
        this.target = target;
        this.align = resourceType.getAlign();
        this.resourceType = resourceType;
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(resource)) resource = ValReplace.get(resource);
    }

    @Override
    public void init() {
    }

    @Override
    public void analyseUseDef() {
        if (target.label == null)target.uses.add(this);
        if (resource instanceof register) {
            register rs = (register) resource;
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
        if (target == rs) throw new RuntimeException("target can not be converted to constant");
        if (resource == rs) {
            resource = en;
            if (en instanceof register) ((register) en).uses.add(this);
        }
        return this;
    }

    @Override
    public void activatePropagate(LinkedList<statement> W) {
        if (target.def!=null && !target.def.inWorklist) {
            target.def.inWorklist = true;
            target.def.isActivate = true;
            W.add(target.def);
        }
        if (resource instanceof register) {
            register rs = (register) resource;
            if (rs.def!=null && !rs.def.inWorklist) {
                rs.def.inWorklist = true;
                rs.def.isActivate = true;
                W.add(rs.def);
            }
        }
    }

    @Override
    public statement clone(HashMap<register, entity> ValReplace) {
        entity shdResource = resource;
        register shdTarget = target;
        if (resource instanceof register) shdResource = ValReplace.get(resource);
        if (ValReplace.containsKey(target)) shdTarget = (register) ValReplace.get(target);
        return new store(shdResource,shdTarget,resourceType);
    }
}
