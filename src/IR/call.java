package IR;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class call extends statement{
    public register rd;
    public IRType rdType;
    public String funcName;
    public funcDef funcAssociated;
    public LinkedList<entityTypePair> parameters = new LinkedList<>();
    // for inlining
    public int expansionLimit;
    // for liveness analysis
    @Override
    public void fillSet() {
        if (rd!=null) def.add(rd);
        for (entityTypePair parameter : parameters) {
            if (parameter.en instanceof register) {
                use.add((register)parameter.en);
            }
        }
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
        return rd!=null && !liveOut.contains(rd);
    }
    //
    public call(register rd,IRType rdType,String funcName, funcDef funcAssociated){
        this.funcAssociated = funcAssociated;
        this.rd = rd;
        this.rdType = rdType;
        this.funcName = funcName;
    }

    public void push_back(entityTypePair para){
        parameters.add(para);
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        for (entityTypePair parameter : parameters) {
            if (ValReplace.containsKey(parameter.en)) parameter.en = ValReplace.get(parameter.en);
        }
    }

    @Override
    public void init() {
        if (rd!=null) {
            rd.uses = new LinkedList<>();
            rd.def = this;
        }
    }

    @Override
    public void analyseUseDef() {
        for (entityTypePair parameter : parameters) {
            if (parameter.en instanceof register) {
                register rs = (register) parameter.en;
                rs.uses.add(this);
            }
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
        boolean flag =false;
        for (entityTypePair parameter : parameters) {
            if (parameter.en == rs) {
                parameter.en = en;
                flag = true;
            }
        }
        if (flag && en instanceof register) {
            ((register) en).uses.add(this);
        }
        return this;
    }

    @Override
    public void activatePropagate(LinkedList<statement> W) {
        for (entityTypePair parameter : parameters) {
            if (parameter.en instanceof register) {
                register rs = (register) parameter.en;
                if (rs.def!=null && !rs.def.inWorklist) {
                    rs.def.inWorklist = true;
                    rs.def.isActivate = true;
                    W.add(rs.def);
                }
            }
        }
    }

    @Override
    public statement clone(HashMap<register, entity> ValReplace) {
        register shdRd = null;
        if (rd!=null) {
            shdRd = new register();
            ValReplace.put(rd,shdRd);
        }
        call shdCall = new call(shdRd,rdType,funcName,funcAssociated);
        for (entityTypePair parameter : parameters) {
            if (parameter.en instanceof register) {
                shdCall.push_back(new entityTypePair(ValReplace.get(parameter.en), parameter.ir));
            } else shdCall.push_back(new entityTypePair(parameter.en,parameter.ir));
        }
        return shdCall;
    }
}
