package Assembly;
import Assembly.Instr.Inst;

import java.sql.PseudoColumnUsage;
import java.util.BitSet;
import java.util.HashMap;
import java.util.HashSet;
public class AsmBlock {
    public Inst headInst = null, tailInst = null;
    public HashSet<AsmBlock> successors = new HashSet<>();
    public int index = -1,funcIndex=-1;
    public boolean isRoot = false;
    public String funcName = null;
    public HashMap<AsmBlock,Inst> JumpFrom = new HashMap<>();
    public int loopDepth;
    //0-31 for global register
    //kill is def, gen is use
    public BitSet kill,gen,liveIn,liveOut;
    public int bitSize;

    // prune-use: public AsmBlock precursor = null;

    public AsmBlock(int loopDepth) {
        this.loopDepth = loopDepth;
    }

    public void push_back(Inst i) {
        if (headInst == null) headInst = tailInst = i;
        else {
            tailInst.next = i;
            i.prev = tailInst;
            tailInst = i;
        }
    }

    public void insert_before(Inst i, Inst in) {
        if (i.prev == null) headInst = in;
        else i.prev.next = in;
        in.prev = i.prev; in.next = i; i.prev = in;
    }

    public void insert_after(Inst i, Inst in) {
        if (i.next == null) tailInst = in;
        else i.next.prev = in;
        in.prev = i; in.next = i.next; i.next = in;
    }

    public void delete_Inst(Inst i) {
        if (i.prev==null) headInst = i.next;
        else {
            i.prev.next = i.next;
        }
        if (i.next==null) tailInst = i.prev;
        else {
            i.next.prev = i.prev;
        }
    }

    public void calcBlock(){
        liveOut = new BitSet(bitSize);
        for (AsmBlock successor : successors) {
            liveOut.or(successor.liveIn);
        }
        liveIn = (BitSet) gen.clone();
        BitSet tmpBitSet = (BitSet) liveOut.clone();
        tmpBitSet.andNot(kill);
        liveIn.or(tmpBitSet);
    }

    @Override
    public String toString() {
        if (isRoot) return funcName;
        return ".LibroBB"+funcIndex+"_" + index;
    }
}
