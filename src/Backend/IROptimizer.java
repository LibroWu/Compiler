package Backend;

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
        b.postDF = new HashSet<>();
        b.ctrlSuccessors = new HashSet<>();
        b.ctrlPredecessor = new HashSet<>();
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
        postOrderSequence = new LinkedList<>();
        calcPostOrderSequence(f.returnBlock);
        System.out.println(postOrderSequence);
        f.returnBlock.postIDom = f.returnBlock;
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
        for (block b : postOrderSequence) {
            System.out.println("DF " + b + " " + b.postDF);
        }
    }

    private void buildCDG() {
        for (block b : postOrderSequence) {
            for (block f : b.postDF) {
                f.ctrlSuccessors.add(b);
                b.ctrlPredecessor.add(f);
            }
        }
        for (block b : postOrderSequence) {
            System.out.println(b + " " + b.postIDom + " " + b.ctrlSuccessors);
        }
    }

    public void RunADCE(funcDef f) {
        f.entryBlock = new block(0);
        f.entryBlock.blockIndex = -16;
        f.entryBlock.successors.add(f.rootBlock);
        f.entryBlock.successors.add(f.returnBlock);
        f.rootBlock.predecessor.add(f.entryBlock);
        f.returnBlock.predecessor.add(f.entryBlock);
        blockMark = new HashSet<>();
        calcDominateTree(f);
        calcDominanceFrontier();
        buildCDG();
        // belong to buildCDG
        f.entryBlock.ctrlSuccessors.add(f.returnBlock);
        f.returnBlock.ctrlPredecessor.add(f.entryBlock);
        LinkedList<statement> W = new LinkedList<>();
        for (block B : postOrderSequence) {
            B.isActivate = false;
            for (statement s = B.headStatement; s != null; s = s.next) {
                if (s instanceof store || s instanceof call || s instanceof ret) {
                    W.add(s);
                    s.inWorklist = true;
                    s.isActivate = true;
                } else {
                    s.inWorklist = false;
                    s.isActivate = false;
                }
            }
        }
        while (!W.isEmpty()) {
            statement s = W.pop();
            s.activatePropagate(W);
            if (!s.parentBlock.isActivate) {
                s.parentBlock.isActivate = true;
                for (block p : s.parentBlock.ctrlPredecessor) {
                    if (p == f.entryBlock) continue;
                    if (!p.tailStatement.inWorklist) {
                        p.tailStatement.inWorklist = true;
                        p.tailStatement.isActivate = true;
                        W.add(p.tailStatement);
                    }
                }
            }
        }
        for (block BB : postOrderSequence) {
            System.out.println("block "+BB+" "+BB.isActivate);
            for (statement s=BB.headStatement;s!=null;s=s.next) {
                System.out.println(s+" "+s.isActivate);
            }
        }
        LinkedList<block> bfsQue = new LinkedList<>();
        HashSet<block> surviveBlock = new HashSet<>();
        for (block CS : f.entryBlock.ctrlSuccessors) {
            if (CS.isActivate) {
                bfsQue.add(CS);
                surviveBlock.add(CS);
            }
        }
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            BB.predecessor.clear();
            BB.successors.clear();
            if (BB.tailStatement instanceof br) {
                br BI = (br) BB.tailStatement;
                if (BI.val == null) {
                    if (BI.trueBranch.isActivate) {
                        BI.isActivate = true;
                        if (!surviveBlock.contains(BI.trueBranch)) {
                            bfsQue.add(BI.trueBranch);
                            surviveBlock.add(BB);
                        }
                    } else {
                        BI.isActivate = true;
                        BI.trueBranch = f.returnBlock;
                        throw new RuntimeException("error: activate block jump to inactivate block");
                    }
                } else {
                    if (BI.trueBranch.isActivate) {
                        BI.isActivate = true;
                        if (!surviveBlock.contains(BI.trueBranch)) {
                            bfsQue.add(BI.trueBranch);
                            surviveBlock.add(BI.trueBranch);
                        }
                        if (BI.falseBranch.isActivate) {
                            if (!surviveBlock.contains(BI.falseBranch)) {
                                bfsQue.add(BI.falseBranch);
                                surviveBlock.add(BI.falseBranch);
                            }
                        } else {
                            br newBI = new br(null,BI.trueBranch,null);
                            newBI.isActivate = true;
                            BB.replace(BI,newBI);
                        }
                    } else if (BI.falseBranch.isActivate) {
                        BI.isActivate = true;
                        if (!surviveBlock.contains(BI.falseBranch)) {
                            bfsQue.add(BI.falseBranch);
                            surviveBlock.add(BI.falseBranch);
                        }
                        br newBI = new br(null,BI.falseBranch,null);
                        newBI.isActivate = true;
                        BB.replace(BI,newBI);
                    } else {
                        BI.isActivate = true;
                        BI.val = null;
                        BI.trueBranch = f.returnBlock;
                        BI.falseBranch = null;
                        throw new RuntimeException("error: activate block jump to two inactivate blocks");
                    }
                }
            }
            for (statement s = BB.headStatement; s != null; s = s.next) {
                if (!s.isActivate) BB.delete_Statement(s);
            }
        }
        for (block survived : surviveBlock) {
            if (survived.tailStatement instanceof br) {
                br BI = (br) survived.tailStatement;
                if (BI.val==null) {
                    survived.successors.add(BI.trueBranch);
                    BI.trueBranch.predecessor.add(survived);
                } else {
                    survived.successors.add(BI.trueBranch);
                    BI.trueBranch.predecessor.add(survived);
                    survived.successors.add(BI.falseBranch);
                    BI.falseBranch.predecessor.add(survived);
                }
            }
        }
        for (block survived : surviveBlock) {
            if (survived.predecessor.size()==0) {
                f.rootBlock = survived;
                break;
            }
        }
        System.out.println(surviveBlock);
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
        if (bl.headStatement == bl.tailStatement && bl.tailStatement instanceof br) {
            br BI = (br) bl.tailStatement;
            if (BI.val == null) {
                BI.trueBranch = shrinkChain(BI.trueBranch, bl);
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
                        BB.replace(BB.tailStatement, new br(null, BI.trueBranch, null));
                        for (phi phi : BI.trueBranch.Phis) {
                            if (phi.removed) continue;
                            boolean flag = false;
                            for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                                if (entityBlockPair.bl == BB) flag = true;
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
        new IRPrinter(System.out).visitProgram(pg);
        pg.funcDefs.forEach(this::RunADCE);
        pg.funcDefs.forEach(this::emptyIRBlockRemove);
    }
}
