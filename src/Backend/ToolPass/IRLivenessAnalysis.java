package Backend.ToolPass;

import Assembly.AsmBlock;
import Assembly.AsmFunc;
import Assembly.Instr.Inst;
import IR.*;

import java.io.PrintStream;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.ListIterator;

public class IRLivenessAnalysis {
    private LinkedList<block> blockList;
    private void collect(funcDef f){
        blockList = new LinkedList<>();
        LinkedList<block> bfsQueue = new LinkedList<>();
        HashSet<block> blockVisited = new HashSet<>();
        bfsQueue.add(f.rootBlock);
        blockVisited.add(f.rootBlock);
        while (!bfsQueue.isEmpty()) {
            block BB = bfsQueue.pop();
            blockList.add(BB);
            for (statement stmt = BB.headStatement;stmt!=null;stmt = stmt.next) {
                    stmt.initialize();
                    stmt.fillSet();
            }
            for (block successor : BB.successors) {
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQueue.add(successor);
                }
            }
        }
    }

    private boolean calcStmt(statement currentStmt) {
        HashSet<register> preIn = currentStmt.liveIn,preOut=currentStmt.liveOut;
        currentStmt.calcInst();
        return !preIn.equals(currentStmt.liveIn) || !preOut.equals(currentStmt.liveOut);
    }

    public void AnalysisFunc(funcDef f){
        collect(f);
        ListIterator<block> blockListIterator;
        int blockListSize = blockList.size();
        boolean quit = false;
        int cnt = 0;
        while (!quit) {
//            out.println("------------------------");
//            out.println("round "+ cnt++);
//            printFunc(f);
//            out.println("------------------------");
            quit = true;
            blockListIterator = blockList.listIterator(blockListSize);
            while (blockListIterator.hasPrevious()) {
                block currentBlock = blockListIterator.previous();
                for (statement stmt = currentBlock.tailStmt;stmt!=null;stmt=stmt.prev) {
                    if (calcStmt(stmt)) quit = false;
                }
            }
        }
        blockListIterator = blockList.listIterator(blockListSize);
        while (blockListIterator.hasPrevious()) {
            block currentBlock = blockListIterator.previous();
            statement nxt;
            for (statement stmt = currentBlock.headStatement;stmt!=null;stmt=nxt) {
                nxt = stmt.next;
                if (stmt.check()) currentBlock.delete_Statement(stmt);
            }
        }
//        out.println("------------------------");
//        out.println("round final");
//        printFunc(f);
//        out.println("------------------------");
    }
    // for debug
    private final PrintStream out = System.out;
    private void printFunc(funcDef f) {
        for (block block : blockList) {
            printBlock(block);
        }
    }

    private void printBlock(block BB) {
        out.println(BB+":");
        for (statement i = BB.headStatement; i != null; i = i.next) {
            out.println("\t" + i.toString() +"\tliveIn:\t"+i.liveIn+"\tliveOut:\t"+i.liveOut);
        }
    }
}
