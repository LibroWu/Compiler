package Backend.Optimizer;

import Backend.IRGen.IRPrinter;
import IR.*;

import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class InlineExpansionPass {
    private program pg;
    private final int expansionThreshold,expansionLimit,totalExpansionThreshold;
    private LinkedList<call> W = new LinkedList<>();
    HashMap<block,block> originToShadow = new HashMap<>();

    private void countStmt(funcDef f) {
        f.selfCallCount = 0;
        f.stmtCount = 0;
        f.expandedCount = 0;
        f.blockQue = new LinkedList<>();
        HashSet<block> blockVisited = new HashSet<>();
        LinkedList<block> bfsQue = new LinkedList<>();
        bfsQue.add(f.rootBlock);
        blockVisited.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            BB.parentFunc = f;
            f.blockQue.add(BB);
            for (statement s = BB.headStatement; s != null; s = s.next) {
                ++f.stmtCount;
                if (s instanceof call) {
                    call c = (call) s;
                    if (c.funcAssociated==f) ++f.selfCallCount;
                }
            }
            for (block successor : BB.successors) {
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQue.add(successor);
                }
            }
        }
        //System.out.println(f.funcId+" "+f.stmtCount);
    }

    private Comparator<funcDef> funcCmp = new Comparator<funcDef>() {
        @Override
        public int compare(funcDef o1, funcDef o2) {
            return o1.stmtCount-o2.stmtCount;
        }
    };

    private void collectWorkSet(){
        pg.funcDefs.sort(funcCmp);
        for (funcDef funcDef : pg.funcDefs) {
            //System.out.println(funcDef.stmtCount);
            for (block BB : funcDef.blockQue) {
                for (statement s = BB.headStatement; s != null; s = s.next) {
                    if (s instanceof call) {
                        call c= (call) s;
                        c.expansionLimit = expansionLimit;
                        W.add(c);
                    }
                }
            }
        }
    }

    public InlineExpansionPass(program pg) {
        this.pg = pg;
        expansionThreshold = 1000;
        expansionLimit = 4;
        totalExpansionThreshold = 10000;
    }

    public InlineExpansionPass(program pg, int expansionThreshold,int expansionLimit,int totalExpansionThreshold) {
        this.pg = pg;
        this.expansionThreshold = expansionThreshold;
        this.expansionLimit = expansionLimit;
        this.totalExpansionThreshold = totalExpansionThreshold;
    }

    private LinkedList<block> getCopyOfAFunc(funcDef f,funcDef newf, HashMap<register,entity> ValReplace, LinkedList<call> W,int expansionLimit,int loopDepth) {
        //new IRPrinter(System.out).visitFuncDef(f);
        block begBl = new block(loopDepth);
        LinkedList<block> originalQueue = new LinkedList<>(),shadowQueue = new LinkedList<>();
        originToShadow.clear();
        originalQueue.add(f.rootBlock);
        shadowQueue.add(begBl);
        originToShadow.put(f.rootBlock,begBl);
        while (!originalQueue.isEmpty()) {
            block ori = originalQueue.pop(),shd = originToShadow.get(ori);
            shd.parentFunc = newf;
            for (statement s=ori.headStatement;s!=null;s=s.next) {
                statement shadowStmt = s.clone(ValReplace);
                if (shadowStmt instanceof call) {
                    call c = (call)shadowStmt;
                    c.expansionLimit = expansionLimit-1;
                    if (c.funcAssociated==f && f.selfCallCount>1) c.expansionLimit/= f.selfCallCount;
                    if (c.funcAssociated.stmtCount<=expansionThreshold && c.expansionLimit>0) W.add(c);
                }
                shd.push_back(shadowStmt);
            }
            if (ori.tailStatement instanceof br) {
                br BI = (br) ori.tailStatement;
                if (!originToShadow.containsKey(BI.trueBranch)) {
                    block BT = new block(loopDepth+BI.trueBranch.loopDepth);
                    originToShadow.put(BI.trueBranch,BT);
                    originalQueue.add(BI.trueBranch);
                    shadowQueue.add(BT);
                    ((br)shd.tailStatement).trueBranch = BT;
                } else {
                    ((br)shd.tailStatement).trueBranch = originToShadow.get(BI.trueBranch);
                }
                if (BI.falseBranch!=null) {
                    if (!originToShadow.containsKey(BI.falseBranch)) {
                        block BF = new block(loopDepth + BI.falseBranch.loopDepth);
                        originToShadow.put(BI.falseBranch, BF);
                        originalQueue.add(BI.falseBranch);
                        shadowQueue.add(BF);
                        ((br) shd.tailStatement).falseBranch = BF;
                    } else {
                        ((br)shd.tailStatement).falseBranch = originToShadow.get(BI.falseBranch);
                    }
                }
            }
            shd.predecessor.clear();
            shd.successors.clear();
        }
        // todo maintain use and def
        for (block BB : shadowQueue) {
            for (phi phi : BB.Phis) {
                for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                    entityBlockPair.bl = originToShadow.get(entityBlockPair.bl);
                    if (entityBlockPair.en instanceof register) {
                        if (!ValReplace.containsKey(entityBlockPair.en)) {
                            //System.out.println(entityBlockPair.en);
                            throw new RuntimeException("Error!");
                        }
                        entityBlockPair.en = ValReplace.get(entityBlockPair.en);
                    }
                }
            }
            for (statement s = BB.headStatement;s!=null;s=s.next){
                s.init();
            }
        }
        for (block BB : shadowQueue) {
            for (statement s = BB.headStatement;s!=null;s=s.next){
                s.analyseUseDef();
            }
        }
        return shadowQueue;
    }

    private void SuccPredCollect(funcDef f) {
        LinkedList<block> bfsQue = new LinkedList<>(),queue = new LinkedList<>();
        HashSet<block> blockVisited = new HashSet<>();
        blockVisited.add(f.rootBlock);
        bfsQue.add(f.rootBlock);
        while (!bfsQue.isEmpty()){
            block BB = bfsQue.pop();
            queue.add(BB);
            BB.predecessor.clear();
            BB.successors.clear();
            if (BB.tailStatement instanceof br) {
                br BI = (br) BB.tailStatement;
                if (!blockVisited.contains(BI.trueBranch)) {
                    blockVisited.add(BI.trueBranch);
                    bfsQue.add(BI.trueBranch);
                }
                if (BI.falseBranch!=null) {
                    if (!blockVisited.contains(BI.falseBranch)) {
                        blockVisited.add(BI.falseBranch);
                        bfsQue.add(BI.falseBranch);
                    }
                }
            }
        }
        for (block BB : queue) {
            if (BB.tailStatement instanceof br) {
                br BI = (br) BB.tailStatement;
                BB.successors.add(BI.trueBranch);
                BI.trueBranch.predecessor.add(BB);
                if (BI.falseBranch!=null) {
                    BB.successors.add(BI.falseBranch);
                    BI.falseBranch.predecessor.add(BB);
                }
            }
        }
    }

    public void RunIE() {
        pg.funcDefs.forEach(this::countStmt);
        collectWorkSet();
        while (!W.isEmpty()) {
            call c = W.pop();
            if (c.funcAssociated==c.parentBlock.parentFunc || c.funcAssociated.stmtCount>expansionThreshold || c.expansionLimit==0 || c.funcAssociated.expandedCount>totalExpansionThreshold) continue;
            // Expand c
            /*System.out.println("expanding "+c.funcName+" in "+c.parentBlock.parentFunc.funcId);
            new IRPrinter(System.out).visitFuncDef(c.parentBlock.parentFunc);*/
            funcDef f = c.funcAssociated;
            block BB = c.parentBlock;
            // will not have phi nodes in new head, so do not need to replace phis
            statement originalTail = BB.tailStatement,newHead = c.next;
            BB.tailStatement = c.prev;
            BB.tailStmt = null;
            if (c.prev!=null) c.prev.next = null;
            else BB.headStatement = null;
            c.next.prev = null;
            block tailBlock = new block(BB.loopDepth);
            tailBlock.headStatement = newHead;
            tailBlock.tailStatement = originalTail;
            tailBlock.tailStmt = (terminalStmt)originalTail;
            tailBlock.parentFunc = BB.parentFunc;
            // update parent block
            for (statement s = tailBlock.headStatement;s!=null;s=s.next) {
                s.parentBlock = tailBlock;
            }
            HashMap<register,entity> ValReplace = new HashMap<>();
            for (int i=0;i<c.parameters.size();++i) {
                ValReplace.put(f.parameterRegs.get(i),c.parameters.get(i).en);
            }
            // val replace
            LinkedList<block> shadowQue = getCopyOfAFunc(f,BB.parentFunc,ValReplace,W,c.expansionLimit,BB.loopDepth);
            block endBl = originToShadow.get(f.returnBlock),begBl = originToShadow.get(f.rootBlock);
            begBl.comment = "begin inline expansion " + f.funcId;
            tailBlock.comment = "end inline expansion " + f.funcId;
            if (c.rd!=null) {
                ret RI = (ret) endBl.tailStatement;
                //em.out.println(RI.value);
                for (statement use : c.rd.uses) {
                    //if (use instanceof getelementptr) System.out.println(((getelementptr) use).rs);
                    use.replaceRegWithEntity(c.rd,RI.value);
                    //if (use instanceof getelementptr) System.out.println(((getelementptr) use).rs);
                }
            }
            // update parent func's statement count
            BB.parentFunc.stmtCount+=f.stmtCount;
            f.expandedCount += f.stmtCount;
            c.removed = true;
            BB.push_back(new br(null,begBl,null));
            endBl.replace(endBl.tailStatement,new br(null,tailBlock,null));
            if (BB==BB.parentFunc.returnBlock) BB.parentFunc.returnBlock = tailBlock;
            // update tailBlock's successors' phi nodes
            if (tailBlock.tailStatement instanceof br) {
                br BI = (br) tailBlock.tailStatement;
                for (phi phi : BI.trueBranch.Phis) {
                    for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                        if (entityBlockPair.bl==BB) entityBlockPair.bl = tailBlock;
                    }
                }
                if (BI.falseBranch!=null) {
                    for (phi phi : BI.falseBranch.Phis) {
                        for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                            if (entityBlockPair.bl==BB) entityBlockPair.bl = tailBlock;
                        }
                    }
                }
            }
            //System.out.println("after expanding "+c.funcName+" in "+c.parentBlock.parentFunc.funcId);
            //new IRPrinter(System.out).visitFuncDef(c.parentBlock.parentFunc);
        }
        pg.funcDefs.forEach(this::SuccPredCollect);
    }
}
