package Backend;

import Assembly.AsmBlock;
import Assembly.AsmFunc;
import Assembly.AsmPg;
import Assembly.Instr.*;

import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.*;

public class LivenessAnalysis {
    public AsmPg asmPg;
    private int blockCnt = 0;
    private int funcCnt = 0;
    //private PrintStream out = new PrintStream("test\\test.live");
    private final PrintStream out = System.out;
    public void collect() {
        asmPg.funcS.forEach(this::collectFunc);
    }

    private void collectFunc(AsmFunc asmFunc) {
        blockCnt = 0;
        Queue<AsmBlock> queue = new LinkedList<>();
        queue.offer(asmFunc.rootBlock);
        asmFunc.rootBlock.index = blockCnt++;
        asmFunc.rootBlock.isRoot = true;
        asmFunc.rootBlock.funcName = asmFunc.funcName;
        List<AsmBlock> blockList = asmFunc.blockList;
        while (!queue.isEmpty()) {
            AsmBlock b = queue.poll();
            b.funcIndex = funcCnt;
            b.successors.forEach(s -> {
                if (s.index == -1) {
                    s.index = blockCnt++;
                    queue.offer(s);
                }
            });
            blockList.add(b);
        }
        funcCnt++;
    }

    public LivenessAnalysis(AsmPg asmPg) {
        this.asmPg = asmPg;
    }

    public void printLivenessAnalysisResult() {
        asmPg.funcS.forEach(this::printFunc);
    }

    private void printFunc(AsmFunc asmFunc) {
        printBlock(asmFunc.rootBlock);
    }

    private void printBlock(AsmBlock asmBlock) {
        out.println(asmBlock+":");
        for (Inst i = asmBlock.headInst; i != null; i = i.next) {
            out.println("\t" + i.toString() +"\tliveIn:\t"+i.liveIn+"\tliveOut:\t"+i.liveOut);
        }
        asmBlock.successors.forEach(this::printBlock);
    }

    public void work() {
        collect();
        asmPg.funcS.forEach(this::workInFunc);
        //printLivenessAnalysisResult();
    }

    private void addBitSet(Inst currentInst, int bitSize) {
        currentInst.def = new BitSet(bitSize);
        currentInst.use = new BitSet(bitSize);
        currentInst.liveIn = new BitSet(bitSize);
        currentInst.liveOut = new BitSet(bitSize);
        currentInst.bitSize = bitSize;
        currentInst.fillSet();
    }

    private void addBitSet(AsmBlock currentBlock, int bitSize,BitSet gen,BitSet kill) {
        currentBlock.kill = kill;
        currentBlock.gen = gen;
        currentBlock.liveIn = new BitSet(bitSize);
        currentBlock.liveOut = new BitSet(bitSize);
        currentBlock.bitSize = bitSize;
    }

    private boolean calcInst(Inst currentInst) {
        BitSet preIn = currentInst.liveIn;
        BitSet preOut = currentInst.liveOut;
        currentInst.calcInst();
        return !preIn.equals(currentInst.liveIn) || !preOut.equals(currentInst.liveOut);
    }

    private boolean calcBlock(AsmBlock currentBlock) {
        BitSet preIn = currentBlock.liveIn;
        BitSet preOut = currentBlock.liveOut;
        currentBlock.calcBlock();
        return !preIn.equals(currentBlock.liveIn) || !preOut.equals(currentBlock.liveOut);
    }

    public void workInFunc(AsmFunc func) {
        int bitSize = func.registerCount + 32, blockListSize = func.blockList.size();
        ListIterator<AsmBlock> asmBlockListIterator = func.blockList.listIterator(blockListSize);
        while (asmBlockListIterator.hasPrevious()) {
            AsmBlock currentBlock = asmBlockListIterator.previous();
            Inst currentInst = currentBlock.tailInst;
            BitSet gen = new BitSet(bitSize),kill = new BitSet(bitSize);
            while (currentInst != null) {
                addBitSet(currentInst, bitSize);
                gen.andNot(currentInst.def);
                gen.or(currentInst.use);
                kill.or(currentInst.def);
                currentInst = currentInst.prev;
            }
            addBitSet(currentBlock,bitSize,gen,kill);
        }
        boolean quit = false;
        while (!quit) {
            quit = true;
            asmBlockListIterator = func.blockList.listIterator(blockListSize);
            while (asmBlockListIterator.hasPrevious()) {
                AsmBlock currentBlock = asmBlockListIterator.previous();
                if (calcBlock(currentBlock)) {
                    quit = false;
                }
                /*Inst currentInst = currentBlock.tailInst;
                while (currentInst.prev != null) {
                    if (calcInst(currentInst)) quit = false;
                    currentInst = currentInst.prev;
                }
                if (calcInst(currentInst)) quit = false;*/
            }
        }
        //dead code eliminate
        asmBlockListIterator = func.blockList.listIterator(blockListSize);
        while (asmBlockListIterator.hasPrevious()) {
            AsmBlock currentBlock = asmBlockListIterator.previous();
            //BitSet live = (BitSet) currentBlock.liveOut.clone();
            Inst currentInst = currentBlock.tailInst;
            while (currentInst!=null) {
                Inst prev = currentInst.prev;
                //if (currentInst instanceof Mv) live.andNot(currentInst.use);
                //live.or(currentInst.def);
                currentInst.calcInst();
                System.out.println("\t"+currentInst+"\t\t"+currentInst.liveOut);
                if (currentInst.check())
                    currentBlock.delete_Inst(currentInst);
                //live.andNot(currentInst.def);
                //live.or(currentInst.use);
                currentInst = prev;
            }
/*            System.out.println("**********");
            System.out.println(currentBlock+"\t block liveIn:"+currentBlock.liveIn+"\t block liveOut:"+currentBlock.liveOut);
            System.out.println("\t first inst liveIn:"+currentBlock.headInst.liveIn+"\t last inst liveOut:"+currentBlock.tailInst.liveOut);
            if (currentBlock.tailInst.prev!=null)System.out.println("\t last prev inst liveOut:"+currentBlock.tailInst.prev.liveOut);
            System.out.println("**********");*/
        }
        //printFunc(func);
    }
}
