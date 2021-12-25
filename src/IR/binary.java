package IR;

public class binary extends statement{
    public enum opTye {
        ADD,SUB,MUL,SDIV,MOD,AND,OR,XOR,ASHR,LSHR,SHL
    }

    public opTye op;
    public entity rd,rs1,rs2;
    public IRType irType;

    public binary(opTye op,IRType irType,entity rd,entity rs1,entity rs2){
        this.op  = op;
        this.rd  = rd;
        this.rs1 = rs1;
        this.rs2 = rs2;
        this.irType = irType;
    }
}
