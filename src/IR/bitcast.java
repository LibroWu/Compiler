package IR;

import java.util.HashMap;

public class bitcast extends statement{
    public register rd,rs;
    public IRType rdType,rsType;
    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(rs)) rs =(register) ValReplace.get(rs);
    }

    public bitcast(register rd,register rs,IRType rdType,IRType rsType){
        this.rd = rd;
        this.rs = rs;
        this.rdType = rdType;
        this.rsType = rsType;
    }
}
