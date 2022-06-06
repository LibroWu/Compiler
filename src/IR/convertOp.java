package IR;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class convertOp extends statement {
    // for liveness analysis
    @Override
    public void fillSet() {
        if (rs instanceof register)use.add((register) rs);
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
    //

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(rs)) rs = ValReplace.get(rs);
    }

    @Override
    public void init() {
        rd.uses = new LinkedList<>();
        rd.def = this;
    }

    @Override
    public void analyseUseDef() {
        if (rs instanceof register) {
            register r = (register) rs;
            r.uses.add(this);
        }
    }

    @Override
    public boolean isResConst() {
        return false;
    }

    @Override
    public void removeStmt(LinkedList<statement> W) {
        // will not call this function?
    }

    @Override
    public statement replaceRegWithEntity(register rs, entity en) {
        if (this.rs == rs) this.rs = en;
        if (en instanceof register) ((register) en).uses.add(this);
        return this;
    }

    @Override
    public void activatePropagate(LinkedList<statement> W) {
        if (rs instanceof register) {
            register R = (register) rs;
            if (R.def!=null && !R.def.inWorklist) {
                R.def.inWorklist = true;
                R.def.isActivate = true;
                W.add(R.def);
            }
        }
    }

    @Override
    public statement clone(HashMap<register, entity> ValReplace) {
        register shdRd = new register();
        ValReplace.put(rd,shdRd);
        entity shdRs = rs;
        if (ValReplace.containsKey(rs)) shdRs = ValReplace.get(rs);
        return new convertOp(shdRd,shdRs,convert,rdType,rsType);
    }

    public enum convertType {
        TRUNC, ZEXT, SEXT
    }

    public register rd;
    public entity rs;
    public convertType convert;
    public IRType rsType, rdType;

    public convertOp(register rd, entity rs, convertType convert, IRType rdType, IRType rsType) {
        this.rd = rd;
        this.rs = rs;
        this.convert = convert;
        this.rdType = rdType;
        this.rsType = rsType;
    }
}
