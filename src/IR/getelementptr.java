package IR;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class getelementptr extends statement {
    public register rd, rs;
    public entity locator1, locator2;
    public IRType rsType;
    // for liveness analysis
    @Override
    public void fillSet() {
        use.add(rs);
        if (locator1 instanceof register) use.add((register) locator1);
        if (locator2 instanceof register) use.add((register) locator2);
        def.add(rd);
    }

    @Override
    public void calcInst() {
        liveOut = new HashSet<>();
        if (next!=null) {
            liveOut.addAll(next.liveIn);
        }
        liveIn = new HashSet<>(liveOut);
        liveIn.removeAll(def);
        liveIn.addAll(use);
    }

    @Override
    public boolean check() {
        return !liveOut.contains(rd);
    }

    @Override
    public register getReg() {
        return rd;
    }

    //
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
        if (rs.label == null) rs.uses.add(this);
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
        if (this.rs == rs && en instanceof constant) throw new RuntimeException("getelementptr's rs can not be converted to constant");
        boolean flag = false;
        if (this.rs == rs) {
            this.rs = (register)en;
            flag = true;
        }
        if (locator1 == rs) {
            locator1 = en;
            flag = true;
        }
        if (locator2 == rs) {
            locator2 = en;
            flag = true;
        }
        if (flag && en instanceof register) ((register) en).uses.add(this);
        return this;
    }

    @Override
    public void activatePropagate(LinkedList<statement> W) {
        if (rs.def != null && !rs.def.inWorklist) {
            rs.def.inWorklist = true;
            rs.def.isActivate = true;
            W.add(rs.def);
        }
        if (locator1 instanceof register) {
            register R = (register) locator1;
            if (R.def != null && !R.def.inWorklist) {
                R.def.inWorklist = true;
                R.def.isActivate = true;
                W.add(R.def);
            }
        }
        if (locator2 instanceof register) {
            register R = (register) locator2;
            if (R.def != null && !R.def.inWorklist) {
                R.def.inWorklist = true;
                R.def.isActivate = true;
                W.add(R.def);
            }
        }
    }

    @Override
    public statement clone(HashMap<register, entity> ValReplace) {
        register shdRd = new register(),shdRs = rs;
        ValReplace.put(rd,shdRd);
        if (ValReplace.containsKey(rs))
            if (ValReplace.get(rs) instanceof register) shdRs = (register) ValReplace.get(rs);
            else {
                // todo bugs here
                shdRs = new register();
                shdRs.uses = new LinkedList<>();
            }
        entity shdLoc1 = locator1,shdLoc2 = locator2;
        if (locator1 instanceof register) shdLoc1 = ValReplace.get(locator1);
        if (locator2 instanceof register) shdLoc2 = ValReplace.get(locator2);
        return new getelementptr(shdRd,shdRs,rsType,shdLoc1,shdLoc2);
    }

    @Override
    public boolean isLoopInvariant(HashSet<block> loop, HashSet<register> live) {
        return false;
    }

    @Override
    public void loopInvariantDelivery(LinkedList<statement> W, LinkedList<statement> promotableStatements, HashSet<block> loop, HashSet<register> live) {

    }

    @Override
    public boolean execute(HashMap<register, Integer> vrMap, HashMap<register, Integer> globalVars, block fromBlock, byte[] bytes) {
        int siz = rsType.reducePtr().getSize(), loc = vrMap.get(rs),loc1,loc2;
        if (locator1 instanceof constant) loc1 = ((constant) locator1).getValue();
        else loc1 = vrMap.get(locator1);
        loc += loc1 * siz;
        if (locator2 != null && (locator2 instanceof register || ((constant)locator2).getValue()!=0)) {
            // must be class
            if (locator2 instanceof constant) loc2 = ((constant) locator2).getValue();
            else loc2 = vrMap.get(locator2);
            IRTypeWithCounter tmp = rsType.cDef.memberForAsm.get(loc2);
            if (rsType.cDef.align == 1) loc += tmp.offset1;
            else loc += tmp.offset4;
        }
        vrMap.put(rd,loc);
        return false;
    }
}
