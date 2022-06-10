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

    public void removeDeadPhiBlocks(funcDef f){
        LinkedList<block> bfsQue = new LinkedList<>();
        HashSet<block> blockVisited = new HashSet<>();
        bfsQue.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            BB.reachable = true;
            for (phi phi : BB.Phis) {
                LinkedList<entityBlockPair> entityBlockPairs = new LinkedList<>();
                for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                    if (entityBlockPair.bl.reachable) {
                        entityBlockPairs.add(entityBlockPair);
                    }
                }
                phi.entityBlockPairs = entityBlockPairs;
            }
            for (block successor : BB.successors) {
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
        removeDeadPhiBlocks(f);
    }

}
