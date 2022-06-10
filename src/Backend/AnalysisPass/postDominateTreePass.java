package Backend.AnalysisPass;

import IR.block;
import IR.funcDef;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.ListIterator;

public class postDominateTreePass {
    private LinkedList<block> postOrderSequence;
    private HashSet<block> blockMark;

    public postDominateTreePass(){}

    public LinkedList<block> Run(funcDef f){
        blockMark = new HashSet<>();
        postOrderSequence = new LinkedList<>();
        calcDominateTree(f);
        calcDominanceFrontier();
        buildCDG();
        return postOrderSequence;
    }

    private void calcPostOrderSequence(block b) {
        blockMark.add(b);
        b.postDF = new HashSet<>();
        b.ctrlSuccessors = new HashSet<>();
        b.ctrlPredecessor = new HashSet<>();
        b.falseEdgeVisited = b.trueEdgeVisited = false;
        b.nextAlive = null;
        b.deadFrontier = null;
        b.deadPredecessors = new HashSet<>();
        for (block predecessor : b.predecessor) {
            if (!blockMark.contains(predecessor))
                calcPostOrderSequence(predecessor);
        }
        postOrderSequence.add(b);
        b.postIDom = null;
        b.ctrlDepth = block.MaxDepth;
    }

    private block intersect(block b1, block b2) {
        if (b1.ctrlDepth < b2.ctrlDepth) {
            block tmp = b1;
            b1 = b2;
            b2 = tmp;
        }
        while (b1.ctrlDepth > b2.ctrlDepth) b1 = b1.postIDom;
        while (b1 != b2) {
            b1 = b1.postIDom;
            b2 = b2.postIDom;
        }
        return b1;
    }

    public void calcDominateTree(funcDef f) {
        calcPostOrderSequence(f.returnBlock);
        //System.out.println(postOrderSequence);
        f.returnBlock.postIDom = f.returnBlock;
        f.returnBlock.ctrlDepth = 0;
        boolean Changed = true;
        while (Changed) {
            Changed = false;
            ListIterator<block> iter = postOrderSequence.listIterator(postOrderSequence.size());
            // skip the start_node
            iter.previous();
            while (iter.hasPrevious()) {
                block b = iter.previous(), new_IDom = null;
                for (block successor : b.successors) {
                    if (successor.ctrlDepth != block.MaxDepth) {
                        new_IDom = successor;
                        break;
                    }
                }
                for (block successor : b.successors) {
                    if (successor.postIDom != null) {
                        new_IDom = intersect(successor, new_IDom);
                    }
                }
                if (b.postIDom != new_IDom) {
                    b.ctrlDepth = new_IDom.ctrlDepth + 1;
                    b.postIDom = new_IDom;
                    Changed = true;
                }
            }
        }
    }

    private void calcDominanceFrontier() {
        for (block b : postOrderSequence) {
            if (b.successors.size() > 1) {
                for (block s : b.successors) {
                    block runner = s;
                    while (runner != b.postIDom) {
                        runner.postDF.add(b);
                        runner = runner.postIDom;
                    }
                }
            }
        }
    }

    private void buildCDG() {
        for (block b : postOrderSequence) {
            for (block f : b.postDF) {
                f.ctrlSuccessors.add(b);
                b.ctrlPredecessor.add(f);
            }
        }
    }
}
