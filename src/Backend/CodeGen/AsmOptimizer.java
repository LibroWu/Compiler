package Backend.CodeGen;

import Assembly.AsmBlock;
import Assembly.AsmFunc;
import Assembly.AsmPg;
import Assembly.Instr.Inst;
import Assembly.Instr.Mv;

import java.io.PrintStream;

public class AsmOptimizer {
    private AsmPg asmPg;

    public AsmOptimizer(AsmPg asmPg) {
        this.asmPg = asmPg;
    }

    public void workInFunc(AsmFunc f) {
        f.blockList.forEach(this::workInBlock);
    }

    public void workInBlock(AsmBlock b) {
       Inst i = b.headInst;
       while (i!=null) {
           Inst next = i.next;
           if (i instanceof Mv) {
               Mv mv = (Mv) i;
               if (mv.rd.getNumber()==mv.rs1.getNumber()) b.delete_Inst(i);
           }
           i = next;
       }
    }
    public void work() {
        asmPg.funcS.forEach(this::workInFunc);
    }
}
