package Backend.Optimizer;

import IR.*;

import java.util.HashSet;
import java.util.LinkedList;

public class ConstPropagationPass {
    private LinkedList<statement> getWorklist(funcDef f) {
        for (register parameterReg : f.parameterRegs) {
            parameterReg.uses = new LinkedList<>();
        }
        LinkedList<statement> W = new LinkedList<>(f.allocas);
        for (IR.alloca alloca : f.allocas) {
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
            if (!s.removed && s.parentBlock.reachable && s.isResConst())
                s.removeStmt(W);
        }
    }

}
