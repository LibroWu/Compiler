package Backend;

import Assembly.AsmBlock;
import Assembly.AsmFunc;
import Assembly.AsmPg;
import Assembly.Instr.*;

import java.io.PrintStream;
import java.util.Queue;
import java.util.LinkedList;
import java.util.List;
public class AsmPrinter {
    private PrintStream out;
    private AsmPg asmPg;
    private int blockCnt = 0;
    private int funcCnt = 0;
    private List<AsmBlock> printList = new LinkedList<>();

    public AsmPrinter(AsmPg asmPg, PrintStream out) {
        this.asmPg = asmPg;
        this.out = out;
    }

    private void rename(){
        asmPg.funcS.forEach(this::renameFunc);
    }

    private void renameFunc(AsmFunc asmFunc) {
        blockCnt=0;
        Queue<AsmBlock> queue = new LinkedList<>();
        queue.offer(asmFunc.rootBlock);
        asmFunc.rootBlock.index = blockCnt++;
        asmFunc.rootBlock.isRoot = true;
        asmFunc.rootBlock.funcName = asmFunc.funcName;
        while(!queue.isEmpty()) {
            AsmBlock b = queue.poll();
            b.funcIndex = funcCnt;
            b.successors.forEach(s -> {
                if (s.index == -1){
                    s.index = blockCnt++;
                    queue.offer(s);
                }
            });
            printList.add(b);
        }
        funcCnt++;
    }
    public void printBlock(AsmBlock b) {
        out.println(b + ": ");
        for (Inst i = b.headInst; i != null; i = i.next) {
            out.println("\t" + i.toString());
        }
    }
    public void print() {
        rename();
        out.println("\t.text\n" +
                "\t.globl main\n" +
                "\t.p2align\t2"+"\n" +
                "\t.type\tmain,@function");
        printList.forEach(this::printBlock);
        out.println(".data");
        asmPg.globals.forEach(out::println);
    }
}
