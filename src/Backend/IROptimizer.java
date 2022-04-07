package Backend;

import Assembly.Instr.Li;
import IR.*;

import java.util.*;

public class IROptimizer {
    public program pg;

    public IROptimizer(program pg) {
        this.pg = pg;
    }

    /* ------------------------- */
    /* | Dead Code Elimination | */
    /* ------------------------- */

    public void RunDCE() {
    }

    /* ------------------------------------ */
    /* | Aggressive Dead Code Elimination | */
    /* ------------------------------------ */
    private LinkedList<block> postOrderSequence;
    private HashSet<block> blockMark;
    private void calcPostOrderSequence(block b) {
        blockMark.add(b);
        for (block predecessor : b.predecessor) {
            if (!blockMark.contains(predecessor))
                calcPostOrderSequence(predecessor);
        }
        postOrderSequence.add(b);
        b.ctrlIDom = null;
        b.ctrlDepth = block.MaxDepth;
    }

    private block intersect(block b1, block b2) {
        if (b1.ctrlDepth < b2.ctrlDepth) {
            block tmp = b1;
            b1 = b2;
            b2 = tmp;
        }
        while (b1.ctrlDepth > b2.ctrlDepth) b1 = b1.ctrlIDom;
        while (b1 != b2) {
            b1 = b1.ctrlIDom;
            b2 = b2.ctrlIDom;
        }
        return b1;
    }

    public void calcDominateTree(funcDef f) {
        postOrderSequence = new LinkedList<>();
        calcPostOrderSequence(f.returnBlock);
        f.returnBlock.ctrlIDom = f.returnBlock;
        f.returnBlock.ctrlDepth = 0;
        boolean Changed = true;
        while (Changed) {
            Changed = false;
            ListIterator<block> iter = postOrderSequence.listIterator(postOrderSequence.size());
            //skip the start_node
            iter.previous();
            while (iter.hasPrevious()) {
                block b = iter.previous(), new_IDom = null;
                for (block successor : b.successors) {
                    if (successor.ctrlDepth!= block.MaxDepth) {
                        new_IDom = successor;
                        break;
                    }
                }
                for (block successor : b.successors) {
                    if (successor.ctrlIDom != null) {
                        new_IDom = intersect(successor, new_IDom);
                    }
                }
                if (b.ctrlIDom != new_IDom) {
                    b.ctrlDepth = new_IDom.ctrlDepth + 1;
                    b.ctrlIDom = new_IDom;
                    Changed = true;
                }
            }
        }
    }

    private void calcDominanceFrontier() {
        for (block b : postOrderSequence) {
            if (b.successors.size() > 1) {
                for (block p : b.predecessor) {
                    block runner = p;
                    while (runner != b.IDom) {
                        runner.DominatorFrontier.add(b);
                        runner = runner.IDom;
                    }
                }
            }
        }
    }

    public void RunADCE(funcDef f) {
        f.entryBlock = new block(0);
        f.entryBlock.successors.add(f.rootBlock);
        f.entryBlock.successors.add(f.returnBlock);
        f.rootBlock.predecessor.add(f.entryBlock);
        f.returnBlock.predecessor.add(f.entryBlock);
        blockMark = new HashSet<>();
        calcDominateTree(f);
    }

    /* ------------------------ */
    /* | Constant Propagation | */
    /* ------------------------ */
    private LinkedList<statement> getWorklist(funcDef f) {
        for (register parameterReg : f.parameterRegs) {
            parameterReg.uses = new LinkedList<>();
        }
        LinkedList<statement> W = new LinkedList<>(f.allocas);
        for (alloca alloca : f.allocas) {
            alloca.init();
        }
        LinkedList<block> bfsQue = new LinkedList<>();
        HashSet<block> blockVisited = new HashSet<>();
        bfsQue.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            BB.reachable = true;
            for (statement s = BB.headStatement; s != null; s = s.next) {
                W.add(s);
                s.init();
            }
            for (block successor : BB.successors) {
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQue.add(successor);
                }
            }
        }
        for (statement s : W) {
            s.inWorklist = true;
            if (!s.parentBlock.reachable) continue;
            s.analyseUseDef();
        }
        return W;
    }

    // try to shrink BB's next block bl with BB
    private block shrinkChain(block bl, block BB) {
        if (bl.visited) return bl;
        BB.visited = true;
        if (bl.headStatement==bl.tailStatement && bl.tailStatement instanceof br){
            br BI = (br) bl.tailStatement;
            if (BI.val==null) {
                BI.trueBranch = shrinkChain(BI.trueBranch,bl);
                for (phi phi : BI.trueBranch.Phis) {
                    if (phi.removed) continue;
                    for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                        if (entityBlockPair.bl == bl) entityBlockPair.bl = BB;
                    }
                }
                bl = BI.trueBranch;
            }
        }
        return bl;
    }

    private void emptyIRBlockRemove(funcDef f) {
        LinkedList<block> bfsQue = new LinkedList<>();
        HashSet<block> blockVisited = new HashSet<>();
        bfsQue.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            BB.visited = false;
            for (phi phi : BB.Phis) {
                if (phi.removed) continue;
                for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                    entityBlockPair.bl.contributesToPhi = true;
                }
            }
            for (block successor : BB.successors) {
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQue.add(successor);
                }
            }
        }
        blockVisited.clear();
        bfsQue.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            BB.successors.clear();
            BB.predecessor.clear();
            if (BB.tailStatement instanceof br) {
                br BI = (br) BB.tailStatement;
                if (BI.val == null) {
                    BI.trueBranch = shrinkChain(BI.trueBranch, BB);
                    BB.successors.add(BI.trueBranch);
                    if (!blockVisited.contains(BI.trueBranch)) {
                        blockVisited.add(BI.trueBranch);
                        bfsQue.add(BI.trueBranch);
                    }
                } else {
                    BI.trueBranch = shrinkChain(BI.trueBranch, BB);
                    BI.falseBranch = shrinkChain(BI.falseBranch, BB);
                    if (BI.trueBranch == BI.falseBranch) {
                        BB.replace(BB.tailStatement,new br(null,BI.trueBranch,null));
                        for (phi phi : BI.trueBranch.Phis) {
                            if (phi.removed) continue;
                            boolean flag =false;
                            for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                                if (entityBlockPair.bl==BB) flag = true;
                            }
                            if (!flag) continue;
                            flag = false;
                            LinkedList<entityBlockPair> entityBlockPairs = new LinkedList<>();
                            for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                                if (entityBlockPair.bl == BB) {
                                    if (flag) continue;
                                    entityBlockPair.en = BI.val;
                                    flag = true;
                                }
                                entityBlockPairs.add(entityBlockPair);
                            }
                            phi.entityBlockPairs = entityBlockPairs;
                        }
                    }
                    BB.successors.add(BI.trueBranch);
                    BB.successors.add(BI.falseBranch);
                    if (!blockVisited.contains(BI.trueBranch)) {
                        blockVisited.add(BI.trueBranch);
                        bfsQue.add(BI.trueBranch);
                    }
                    if (!blockVisited.contains(BI.falseBranch)) {
                        blockVisited.add(BI.falseBranch);
                        bfsQue.add(BI.falseBranch);
                    }
                }
            }
        }
        // build predecessors
        blockVisited.clear();
        bfsQue.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            for (block successor : BB.successors) {
                successor.predecessor.add(BB);
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQue.add(successor);
                }
            }
        }
    }

    public void RunCP(funcDef f) {
        LinkedList<statement> W = getWorklist(f);
        while (!W.isEmpty()) {
            statement s = W.pop();
            //boolean flag = false;
            //if (s.parentBlock!=null) flag = s.parentBlock.reachable;
            //System.out.println("***"+s.parentBlock+" "+flag);
            s.inWorklist = false;
            if (!s.removed && s.parentBlock.reachable && s.isResConst()) s.removeStmt(W);
        }
    }

    /* ------------------------------------ */
    /* | Common Subexpression Elimination | */
    /* ------------------------------------ */
    public void RunCSE() {
    }

    /* -------------------- */
    /* | Inline Expansion | */
    /* -------------------- */
    public void RunIE() {
    }

    /* --------------------- */
    /* | Loop Optimization | */
    /* --------------------- */
    public void RunLoop() {
    }

    public void run() {
        pg.funcDefs.forEach(this::RunCP);
        pg.funcDefs.forEach(this::RunADCE);
        pg.funcDefs.forEach(this::emptyIRBlockRemove);
    }
}
