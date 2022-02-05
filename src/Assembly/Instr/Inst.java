package Assembly.Instr;

public abstract class Inst {
    public Inst prev = null, next = null;
    public enum CalCategory {
        mul,div,rem,add, sub, xor, or, and, sll,srl,sra,slt,seq,sne,sgt
    }

    public enum CompareCategory{
        eq,ne,lt,le,gt,ge
    }

    // below: for Asm Printer
    @Override abstract public String toString();
}
