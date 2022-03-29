package IR;

import java.util.HashMap;

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

    public bitcast(register rd,register rs,IRType rdType,IRType rsType){
        this.rd = rd;
        this.rs = rs;
        this.rdType = rdType;
        this.rsType = rsType;
    }
}
