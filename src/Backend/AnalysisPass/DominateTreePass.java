package Backend.AnalysisPass;

import IR.block;
import IR.funcDef;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.ListIterator;

public class DominateTreePass {
    private LinkedList<block> postOrderSequence;
    private void calcPostOrderSequence(block b) {
        b.visited = true;
        b.DF = new HashSet<>();
        for (block successor : b.successors) {
            successor.predecessor.add(b);
            if (!successor.visited)
                calcPostOrderSequence(successor);
        }
        postOrderSequence.add(b);
        b.IDom = null;
        b.depth = block.MaxDepth;
    }

    private block intersect(block b1, block b2) {
        if (b1.depth < b2.depth) {
            block tmp = b1;
            b1 = b2;
            b2 = tmp;
        }
        while (b1.depth > b2.depth) b1 = b1.IDom;
        while (b1 != b2) {
            b1 = b1.IDom;
            b2 = b2.IDom;
        }
        return b1;
    }

    public LinkedList<block> Run(funcDef f){
        calcDominateTree(f);
        calcDominanceFrontier();
        return postOrderSequence;
    }

    public void calcDominateTree(funcDef f) {
        postOrderSequence = new LinkedList<>();
        calcPostOrderSequence(f.rootBlock);
        f.rootBlock.IDom = f.rootBlock;
        f.rootBlock.depth = 0;
        boolean Changed = true;
        while (Changed) {
            Changed = false;
            ListIterator<block> iter = postOrderSequence.listIterator(postOrderSequence.size());
            //skip the start_node
            iter.previous();
            while (iter.hasPrevious()) {
                block b = iter.previous(), new_IDom = null;
                for (block predecessor : b.predecessor) {
                    if (predecessor.depth != block.MaxDepth) {
                        new_IDom = predecessor;
                        break;
                    }
                }
                for (block predecessor : b.predecessor) {
                    if (predecessor.IDom != null) {
                        new_IDom = intersect(predecessor, new_IDom);
                    }
                }
                if (b.IDom != new_IDom) {
                    b.depth = new_IDom.depth + 1;
                    b.IDom = new_IDom;
                    Changed = true;
                }
            }
        }
    }

    private void calcDominanceFrontier() {
        for (block b : postOrderSequence) {
            if (b.predecessor.size() > 1) {
                for (block p : b.predecessor) {
                    block runner = p;
                    while (runner != b.IDom) {
                        runner.DF.add(b);
                        runner = runner.IDom;
                    }
                }
            }
        }
    }

    public boolean dominates(block dom, block sub) {
        // check whether dom dominates sub
        while (sub.depth > dom.depth) {
            sub = sub.IDom;
        }
        return (sub == dom);
    }
}
