package Backend.Optimizer;

import Backend.AnalysisPass.DominateTreePass;
import Backend.AnalysisPass.IRLivenessAnalysis;
import IR.*;

import java.util.HashSet;
import java.util.LinkedList;

public class LoopOptPass {
    private final program pg;
    private funcDef f;
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
            // initalize
            BB.naturalLoop = new HashSet<>();
            BB.isTopLoop = false;
            BB.loopHeader = null;
            for (statement stmt = BB.headStatement; stmt!=null;stmt=stmt.next) {
                stmt.init();
            }
            for (block successor : BB.successors) {
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQueue.add(successor);
                }
            }
        }
        for (alloca alloca : f.allocas) {
            alloca.init();
            alloca.analyseUseDef();
        }
        for (register parameterReg : f.parameterRegs) {
            parameterReg.uses = new LinkedList<>();
            parameterReg.isLoopInvariant = true;
        }
        for (block BB : blockList) {
            for (statement stmt = BB.headStatement; stmt!=null;stmt=stmt.next) {
                stmt.analyseUseDef();
            }
        }
    }

    private void buildLoopNestTree(block header) {
        LinkedList<block> topLoops = new LinkedList<>(),loopHeaders = new LinkedList<>();
        for (block looper : header.naturalLoop) {
            if (looper==header) continue;
            looper.loopHeader = header;
            if (looper.naturalLoop.size()!=0) {
                loopHeaders.add(looper);
                looper.isTopLoop = true;
            }
        }
        for (block loopHeader : loopHeaders) {
            boolean flag = loopHeader.isTopLoop;
            for (block BB : loopHeader.naturalLoop) {
                BB.isTopLoop = false;
            }
            loopHeader.isTopLoop = flag;
        }
        for (block loopHeader : loopHeaders) {
            if (loopHeader.isTopLoop) {
                topLoops.add(loopHeader);
            }
        }
        header.subLoops = topLoops;
        for (block topLoop : topLoops) {
            topLoop.loopTreeParent = header;
            buildLoopNestTree(topLoop);
        }
    }

    private LinkedList<block> getAllNaturalLoops() {
        initialize(f);
        LinkedList<block> topLoops = new LinkedList<>(),loopHeaders = new LinkedList<>();
        for (block BB : blockList) {
            for (block successor : BB.successors) {
                if (dominateTreePass.dominates(successor,BB)) {
                    HashSet<block> loop = getNaturalLoop(BB,successor);
                    successor.naturalLoop.addAll(loop);
                    loopHeaders.add(successor);
                    successor.isTopLoop = true;
                }
            }
        }
        // find all top loops
        for (block loopHeader : loopHeaders) {
            boolean flag = loopHeader.isTopLoop;
            for (block BB : loopHeader.naturalLoop) {
                BB.isTopLoop = false;
            }
            loopHeader.isTopLoop = flag;
        }
        for (block loopHeader : loopHeaders) {
            if (loopHeader.isTopLoop) {
                topLoops.add(loopHeader);
            }
        }
        // build loop nest tree
        for (block topLoop : topLoops) {
            buildLoopNestTree(topLoop);
        }
        // debug output
        for (block block : blockList) {
            System.out.println("block: "+block+" is top loop?" + block.isTopLoop);
            System.out.println(block.naturalLoop);
            System.out.println(block.loopTreeParent);
            System.out.println(block.subLoops);
        }
        System.out.println(topLoops);
        //irLivenessAnalysis.AnalysisFunc(f);
        return topLoops;
    }

    private void preheaderInsert(block BB){
        if (BB.naturalLoop.size()!=0) {
            block preheader = new block(BB.loopDepth);
            preheader.comment = "preheader of "+BB;
            if (BB.loopHeader!=null) {
                BB.loopHeader.naturalLoop.add(preheader);
            }
            // deal the phi node
            for (phi phi : BB.Phis) {
                if (phi.removed) continue;
                boolean flag = false;
                for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                    if (BB.predecessor.contains(entityBlockPair.bl) && !BB.naturalLoop.contains(entityBlockPair.bl)) {
                        flag = true;
                        break;
                    }
                }
                if (flag) {
                    phi phiPre = new phi(new register(),phi.rdType);
                    phiPre.rd.def = phiPre;
                    phiPre.rd.uses = new LinkedList<>();
                    phiPre.rd.uses.add(phi);
                    LinkedList<entityBlockPair> newEntityBlockPairs = new LinkedList<>();
                    newEntityBlockPairs.push(new entityBlockPair(phiPre.rd,preheader));
                    for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                        if (BB.naturalLoop.contains(entityBlockPair.bl)) {
                            newEntityBlockPairs.add(entityBlockPair);
                        } else if (BB.predecessor.contains(entityBlockPair.bl)) {
                            phiPre.push_back(entityBlockPair);
                        }
                    }
                    phi.entityBlockPairs = newEntityBlockPairs;
                    preheader.push_back(phiPre);
                }
            }
            HashSet<block> newPredecessor = new HashSet<>();
            for (block pred : BB.predecessor) {
                if (BB.naturalLoop.contains(pred)) {
                    newPredecessor.add(pred);
                    continue;
                }
                br brStmt = (br) pred.tailStatement;
                if (brStmt.trueBranch==BB) brStmt.trueBranch = preheader;
                if (brStmt.falseBranch==BB) brStmt.falseBranch = preheader;
                pred.successors.remove(BB);
                pred.successors.add(preheader);
                preheader.predecessor.add(pred);
            }
            BB.preHeader = preheader;
            BB.predecessor = newPredecessor;
            BB.predecessor.add(preheader);
            preheader.push_back(new br(null,BB,null));
        }
    }

    private LinkedList<statement> getPromotableStatements(block header){
        LinkedList<statement> promotableStatements = new LinkedList<>();
        // live out of all the loop exits
        HashSet<register> liveOut = new HashSet<>();
        for (block looper : header.naturalLoop) {
            for (block successor : looper.successors) {
                if (!header.naturalLoop.contains(successor) && successor.headStatement!=null) {
                    liveOut.addAll(successor.headStatement.liveIn);
                }
            }
        }
        // d: t <- a op b, t can not be out live in the preheader
        // but why?
        liveOut.removeAll(header.preHeader.tailStatement.liveOut);
        for (block looper : header.naturalLoop) {
            for (statement stmt = looper.headStatement;stmt!=null; stmt=stmt.next){
                if (stmt.isLoopInvariant(header.naturalLoop,liveOut)) promotableStatements.add(stmt);
            }
        }
        LinkedList<statement> W = new LinkedList<>(promotableStatements);
        while (!W.isEmpty()) {
            statement stmt = W.pop();
            stmt.loopInvariantDelivery(W,promotableStatements,header.naturalLoop,liveOut);
        }
        return promotableStatements;
    }

    private void promoteStatements(block header,LinkedList<statement> statements){
        for (statement stmt : statements) {
            stmt.parentBlock.delete_Statement(stmt);
            stmt.removed = false;
            header.preHeader.insert_before(header.preHeader.tailStatement,stmt);
        }
    }

    private void setAllRegisters(HashSet<block> loop) {
        for (block looper : loop) {
            for (statement stmt = looper.headStatement; stmt!=null;stmt=stmt.next) {
                register rd = stmt.getReg();
                if (rd != null) rd.isLoopInvariant = false;
            }
        }
    }

    private void loopInvariantIteration(block header) {
        //System.out.println("in "+header);
        header.subLoops.forEach(this::loopInvariantIteration);
        preheaderInsert(header);
        setAllRegisters(header.naturalLoop);
        while (true) {
            irLivenessAnalysis.AnalysisFunc(f);
            LinkedList<statement> promotableStatements = getPromotableStatements(header);
            if (promotableStatements.size()==0) break;
            promoteStatements(header,promotableStatements);
        }
    }

    private void loopInvariantCodeMotion(LinkedList<block> topLoops){
        topLoops.forEach(this::loopInvariantIteration);
    }

    private void InductiveVariable(){

    }

    private void RunInFunc(funcDef f){
        this.f = f;
        dominateTreePass.Run(f);
        LinkedList<block> topLoops = getAllNaturalLoops();
        loopInvariantCodeMotion(topLoops);
    }

    public void Run(){
       pg.funcDefs.forEach(this::RunInFunc);
    }
}
