package IR;

import java.util.HashMap;

public class icmp extends statement{
    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(rs1)) rs1 = ValReplace.get(rs1);
        if (ValReplace.containsKey(rs2)) rs2 = ValReplace.get(rs2);
    }
    public enum cmpOpType {
        SLT,SLE,SGT,SGE,EQ,NEQ
    }
    public entity rs1,rs2;
    public register rd;
    public cmpOpType cmpOp;
    public IRType rsType;

    public icmp(register rd,entity rs1,entity rs2,cmpOpType cmpOp,IRType rsType) {
        this.rd = rd;
        this.rs1 = rs1;
        this.rs2 = rs2;
        this.cmpOp = cmpOp;
        this.rsType = rsType;
    }
}