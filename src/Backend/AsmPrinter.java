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

    public AsmPrinter(AsmPg asmPg, PrintStream out) {
        this.asmPg = asmPg;
        this.out = out;
    }

    public void printFunc(AsmFunc f) {
        f.blockList.forEach(this::printBlock);
    }

    public void printBlock(AsmBlock b) {
        out.println(b + ": ");
        for (Inst i = b.headInst; i != null; i = i.next) {
            out.println("\t" + i.toString());
        }
    }
    public void print() {
        out.println("\t.text\n" +
                "\t.globl main\n" +
                "\t.p2align\t2"+"\n" +
                "\t.type\tmain,@function");
        asmPg.funcS.forEach(this::printFunc);
        out.println(".data");
        asmPg.globals.forEach(out::println);
    }
}
