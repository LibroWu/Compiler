package Backend.Optimizer;

import IR.*;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.ListIterator;

public class ADCEPass {
    private LinkedList<block> postOrderSequence;
    private HashSet<block> blockMark;

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
        postOrderSequence = new LinkedList<>();
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
        /*for (block b : postOrderSequence) {
            System.out.println("DF " + b + " " + b.postDF);
        }*/
    }

    private void buildCDG() {
        for (block b : postOrderSequence) {
            for (block f : b.postDF) {
                f.ctrlSuccessors.add(b);
                b.ctrlPredecessor.add(f);
            }
        }
        /*for (block b : postOrderSequence) {
            System.out.println(b + " " + b.postIDom + " " + b.ctrlSuccessors);
        }*/
    }

    private block findDeadFrontier(block B) {
        //System.out.println("find DeadFrontier "+B);
        if (B.deadFrontier != null) return B.deadFrontier;
        br BI = (br) B.tailStatement;
        if (!B.trueEdgeVisited) {
            B.trueEdgeVisited = true;
            if (BI.trueBranch.isActivate) {
                B.deadFrontier = B;
                B.nextAlive = BI.trueBranch;
                BI.trueBranch.deadPredecessors.add(B);
                B.alivePredecessors = new LinkedList<>();
                return B;
            }
            B.deadFrontier = findDeadFrontier(BI.trueBranch);
            if (B.deadFrontier != null) return B.deadFrontier;
        }
        if (BI.falseBranch == null) {
            return null;
            //throw new RuntimeException("can not find Dead Frontier!");
        }
        if (!B.falseEdgeVisited) {
            B.falseEdgeVisited = true;
            if (BI.falseBranch.isActivate) {
                B.deadFrontier = B;
                B.nextAlive = BI.falseBranch;
                BI.trueBranch.deadPredecessors.add(B);
                B.alivePredecessors = new LinkedList<>();
                return B;
            }
            B.deadFrontier = findDeadFrontier(BI.falseBranch);
            if (B.deadFrontier != null) return B.deadFrontier;
        }
        return null;
        //throw new RuntimeException("can not find Dead Frontier!!");
    }

    public void RunADCE(funcDef f) {
        //System.out.println("in func "+f.funcId);
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
            if (s.removed) continue;
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
        f.rootBlock.isActivate = true;
        f.rootBlock.tailStatement.isActivate = true;
        // debug print
        /*for (block BB : postOrderSequence) {
            System.out.println("block " + BB + " " + BB.isActivate);
            for (statement s = BB.headStatement; s != null; s = s.next) {
                System.out.println(s + " " + s.isActivate);
            }
        }*/
        LinkedList<block> surviveBlock = new LinkedList<>();
        for (block BB : postOrderSequence) {
            if (BB != f.entryBlock && !BB.isActivate) {
                findDeadFrontier(BB);
            }
        }
        for (block BB : postOrderSequence) {
            if (BB.isActivate) {
                surviveBlock.add(BB);
                if (BB.tailStatement instanceof br) {
                    br BI = (br) BB.tailStatement;
                    if (!BI.trueBranch.isActivate) {
                        block BT = BI.trueBranch;
                        BI.trueBranch = BT.deadFrontier.nextAlive;
                        BT.deadFrontier.alivePredecessors.add(BB);
                    }
                    if (BI.falseBranch != null && !BI.falseBranch.isActivate) {
                        block BF = BI.falseBranch;
                        BI.falseBranch = BF.deadFrontier.nextAlive;
                        BF.deadFrontier.alivePredecessors.add(BB);
                    }
                    if (BI.falseBranch == BI.trueBranch) {
                        BI.val = null;
                        BI.falseBranch = null;
                    }
                    BI.isActivate = true;
                }
            }
        }
        if (!f.rootBlock.isActivate) f.rootBlock = f.rootBlock.deadFrontier.nextAlive;
        // rewrite phi and clear predecessors and successors
        for (block BB : surviveBlock) {
            BB.successors.clear();
            BB.predecessor.clear();
            if (BB.deadPredecessors.size() == 0) continue;
            for (phi phi : BB.Phis) {
                boolean flag = false;
                for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                    if (BB.deadPredecessors.contains(entityBlockPair.bl)) {
                        flag = true;
                        break;
                    }
                }
                if (!flag) continue;
                LinkedList<entityBlockPair> entityBlockPairs = new LinkedList<>();
                for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                    if (BB.deadPredecessors.contains(entityBlockPair.bl)) {
                        for (block alivePredecessor : entityBlockPair.bl.alivePredecessors) {
                            entityBlockPairs.add(new entityBlockPair(entityBlockPair.en, alivePredecessor));
                        }
                    } else entityBlockPairs.add(entityBlockPair);
                }
                phi.entityBlockPairs = entityBlockPairs;
            }
        }
        for (block BB : surviveBlock) {
            statement nxt;
            for (statement s = BB.headStatement; s != null; s = nxt) {
                nxt = s.next;
                if (!s.isActivate) BB.delete_Statement(s);
            }
            if (BB.tailStatement instanceof br) {
                br BI = (br) BB.tailStatement;
                BB.successors.add(BI.trueBranch);
                BI.trueBranch.predecessor.add(BB);
                if (BI.falseBranch != null) {
                    BB.successors.add(BI.falseBranch);
                    BI.falseBranch.predecessor.add(BB);
                }
            }
        }
        /*for (block CS : f.entryBlock.ctrlSuccessors) {
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


            }
            for (statement s = BB.headStatement; s != null; s = s.next) {
                if (!s.isActivate) BB.delete_Statement(s);
            }
        }
        for (block survived : surviveBlock) {
            if (survived.tailStatement instanceof br) {
                br BI = (br) survived.tailStatement;
                if (BI.val == null) {
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
            if (survived.predecessor.size() == 0) {
                f.rootBlock = survived;
                break;
            }
        }*/
        //System.out.println(surviveBlock);
    }
}
