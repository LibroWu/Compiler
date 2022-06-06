package Backend.Optimizer;

import IR.*;

import java.util.HashSet;
import java.util.LinkedList;

// class of block merge pass for llvm IR
public class BasicBlockMergingPass {
    private program pg;
    public BasicBlockMergingPass(program pg){
        this.pg = pg;
    }

    public void RunInFunc(funcDef f){
        HashSet<block> blockVisited = new HashSet<>();
        LinkedList<block> bfsQue = new LinkedList<>();
        bfsQue.add(f.rootBlock);
        blockVisited.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            while (BB.successors.size()==1) {
                boolean flag = false;
                HashSet<block> succs = null;
                for (block successor : BB.successors) {
                    if (successor.predecessor.size()==1) {
                        // ok to merge
                        statement nxt;
                        for (statement stmt = successor.headStatement;stmt!=successor.tailStatement;stmt=nxt) {
                            nxt = stmt.next;
                            BB.insert_before(BB.tailStatement,stmt);
                        }
                        BB.replace(BB.tailStatement,successor.tailStmt);
                        if (successor.tailStatement instanceof ret) {
                            f.returnBlock = BB;
                        }
                        for (phi phi : successor.Phis) {
                            if (phi.removed) continue;
                            LinkedList<entityBlockPair> entityBlockPairs = new LinkedList<>();
                            for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                                if (entityBlockPair.bl == BB) {
                                    for (block pred : BB.predecessor) {
                                        entityBlockPairs.add(new entityBlockPair(entityBlockPair.en,pred));
                                    }
                                } else {
                                    entityBlockPairs.add(entityBlockPair);
                                }
                            }
                            phi.entityBlockPairs = entityBlockPairs;
                            BB.Phis.add(phi);
                        }
                        succs = successor.successors;
                        for (block succ : successor.successors) {
                            succ.predecessor.remove(successor);
                            succ.predecessor.add(BB);
                            for (phi phi : succ.Phis) {
                                if (phi.removed) continue;
                                for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                                    if (entityBlockPair.bl == successor) entityBlockPair.bl = BB;
                                }
                            }
                        }
                    } else flag = true;
                }
                if (flag) break;
                BB.successors = succs;
            }
            for (block successor : BB.successors) {
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQue.add(successor);
                }
            }
        }
    }

    public void RunBM(){
        pg.funcDefs.forEach(this::RunInFunc);
    }
}
