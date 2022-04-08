package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class bitcast extends statement{
    public register rd,rs;
    public IRType rdType,rsType;
    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(rs)) {
            // but here can detect the method call on null
            entity en = ValReplace.get(rs);
            if (en instanceof register) rs =(register) en;
        }
    }

    @Override
    public void init() {
        rd.uses = new LinkedList<>();
        rd.def = this;
    }

    @Override
    public void analyseUseDef() {
        if (rs.label==null) rs.uses.add(this);
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
        if (this.rs == rs) throw new RuntimeException("bitcast's rd can not be converted to constant");
        return this;
    }

    @Override
    public void activatePropagate(LinkedList<statement> W) {
        if (rs.def!=null && !rs.def.inWorklist) {
            rs.def.inWorklist = true;
            rs.def.isActivate = true;
            W.add(rs.def);
        }
    }

    public bitcast(register rd,register rs,IRType rdType,IRType rsType){
        this.rd = rd;
        this.rs = rs;
        this.rdType = rdType;
        this.rsType = rsType;
    }
}
