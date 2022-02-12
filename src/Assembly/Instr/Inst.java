package Assembly.Instr;

import java.util.BitSet;

public abstract class Inst {
    public Inst prev = null, next = null;
    //0-31 for global register
    public BitSet def,use,liveIn,liveOut;
    public int bitSize = 0;
    public enum CalCategory {
        mul,div,rem,add, sub, xor, or, and, sll,srl,sra,slt,seq,sne,sgt
    }

    public enum CompareCategory{
        eq,ne,lt,le,gt,ge
    }

    abstract public void fillSet();
    abstract public void calcInst();
    abstract public boolean check();
    // below: for Asm Printer
    @Override abstract public String toString();
}
