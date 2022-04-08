package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class call extends statement{
    public register rd;
    public IRType rdType;
    public String funcName;
    public LinkedList<entityTypePair> parameters = new LinkedList<>();

    public call(register rd,IRType rdType,String funcName){
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
        for (entityTypePair parameter : parameters) {
            if (parameter.en == rs) parameter.en = en;
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
}
