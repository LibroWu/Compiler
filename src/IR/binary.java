package IR;

import java.util.HashMap;

public class binary extends statement{
    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(rs1)) rs1 = ValReplace.get(rs1);
        if (ValReplace.containsKey(rs2)) rs2 = ValReplace.get(rs2);
    }

    public enum opTye {
        ADD,SUB,MUL,SDIV,MOD,AND,OR,XOR,ASHR,LSHR,SHL
    }

    public opTye op;
    public entity rs1,rs2;
    public register rd;
    public IRType irType;

    public binary(opTye op,IRType irType,register rd,entity rs1,entity rs2){
        this.op  = op;
        this.rd  = rd;
        this.rs1 = rs1;
        this.rs2 = rs2;
        this.irType = irType;
    }
}
