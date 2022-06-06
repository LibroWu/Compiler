package Backend.Optimizer;

import Backend.ToolPass.DominateTreePass;
import Backend.ToolPass.IRLivenessAnalysis;
import IR.*;

import java.util.HashSet;
import java.util.LinkedList;

public class LoopOptPass {
    private final program pg;
    private final DominateTreePass dominateTreePass = new DominateTreePass();
    private LinkedList<block> blockList;
    private IRLivenessAnalysis irLivenessAnalysis = new IRLivenessAnalysis();
    public LoopOptPass(program pg) {
        this.pg = pg;
    }

    // back edge n->d
    private HashSet<block> getNaturalLoop(block n,block d){
        HashSet<block> loop = new HashSet<>();
        LinkedList<block> BFSQue = new LinkedList<>();
        loop.add(d);
        if (!loop.contains(n)) {
            BFSQue.add(n);
            loop.add(n);
        }
        while (!BFSQue.isEmpty()) {
            block m = BFSQue.pop();
            for (block pred : m.predecessor) {
                if (!loop.contains(pred)) {
                    BFSQue.add(pred);
                    loop.add(pred);
                }
            }
        }
        return loop;
    }

    private void initialize(funcDef f) {
        blockList = new LinkedList<>();
        LinkedList<block> bfsQueue = new LinkedList<>();
        HashSet<block> blockVisited = new HashSet<>();
        bfsQueue.add(f.rootBlock);
        blockVisited.add(f.rootBlock);
        while (!bfsQueue.isEmpty()) {
            block BB = bfsQueue.pop();
            blockList.add(BB);
            BB.naturalLoop = new HashSet<>();
            for (block successor : BB.successors) {
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQueue.add(successor);
                }
            }
        }
    }

    private void getAllNaturalLoops(funcDef f) {
        initialize(f);
        for (block BB : blockList) {
            for (block successor : BB.successors) {
                if (dominateTreePass.dominates(successor,BB)) {
                    HashSet<block> loop = getNaturalLoop(BB,successor);
                    successor.naturalLoop.addAll(loop);
                }
            }
        }
        for (block block : blockList) {
            System.out.println(block.naturalLoop);
        }
        irLivenessAnalysis.AnalysisFunc(f);
    }

    private void loopInvariantOpt(funcDef f){

    }

    private void RunInFunc(funcDef f){
        dominateTreePass.Run(f);
        getAllNaturalLoops(f);
        loopInvariantOpt(f);
    }

    public void Run(){
        pg.funcDefs.forEach(this::RunInFunc);
    }
}
