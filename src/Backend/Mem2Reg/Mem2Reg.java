package Backend.Mem2Reg;

import Assembly.Instr.Li;
import IR.*;

import java.util.*;

public class Mem2Reg {
    public program pg;
    private LinkedList<block> postOrderSequence;
    HashMap<register, alloca> RegToAlloca;
    HashMap<entity, entity> ValReplace;

    //for debug
    private int counter = -1;

    //In Mx* all allocas are promotable
    //The proposition is checked by practice
    public Mem2Reg(program pg) {
        this.pg = pg;
    }

    private void calcPostOrderSequence(block b) {
        b.visited = true;
        for (block successor : b.successors) {
            successor.predecessor.add(b);
            if (!successor.visited)
                calcPostOrderSequence(successor);
        }
        postOrderSequence.add(b);
        b.IDom = null;
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
                    if (new_IDom == null) {
                        new_IDom = predecessor;
                    } else if (predecessor.IDom != null) {
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
                        runner.DominatorFrontier.add(b);
                        runner = runner.IDom;
                    }
                }
            }
        }
    }

    private boolean dominates(block dom, block sub) {
        // check whether dom dominates sub
        while (sub.depth > dom.depth) {
            sub = sub.IDom;
        }
        return (sub == dom);
    }

    private boolean rewriteSingleStoreAlloca(alloca AI, AllocaInfo Info) {
        Info.UsingBlocks.clear();
        block StoreBB = Info.OnlyStore.parentBlock;
        boolean witnessStore = false;
        for (user user : AI.users) {
            //the only store
            if (user instanceof store) {
                witnessStore = true;
                continue;
            }
            load LI = (load) user;
            if (LI.parentBlock == StoreBB) {
                if (!witnessStore) {
                    Info.UsingBlocks.add(StoreBB);
                    continue;
                }
            } else if (!dominates(StoreBB, LI.parentBlock)) {
                // If the load and store are in different blocks
                // and the block store in can not dominate the block load in
                Info.UsingBlocks.add(LI.parentBlock);
                continue;
            }
            //do the rewrite safely
            LI.removed = true;
            LI.recorder = Info.OnlyStore.resource;
        }
        if (!Info.UsingBlocks.isEmpty()) return false;
        Info.OnlyStore.removed = true;
        return true;
    }

    private boolean promoteSingleBlockAlloca(alloca AI, AllocaInfo Info) {
        //users are inserted into AI by the order they appear in the block
        store previousStore = null;
        for (user user : AI.users) {
            if (user instanceof load) {
                if (previousStore == null) {
                    if (Info.OnlyStore == null) {
                        //undefined initialization
                        load LI = (load) user;
                        LI.removed = true;
                        entity en;
                        if (LI.rsType.ptrNum > 1) en = new constant();
                        else en = new constant(0);
                        LI.recorder = en;
                    } else return false;
                } else {
                    load LI = (load) user;
                    LI.removed = true;
                    LI.recorder = previousStore.resource;
                }
            } else {
                previousStore = (store) user;
                user.removed = true;
            }
        }
        return true;
    }

    private void Rename(block BB, HashMap<alloca, entity> IncomingValues) {
        //System.out.println( BB+ " " + IncomingValues);
        //System.out.println(BB + " DF: " + BB.DominatorFrontier + " IDOM: " + BB.IDom);
        for (statement stmt = BB.headStatement; stmt != null; stmt = stmt.next) {
            if (stmt instanceof user) {
                if (stmt instanceof store) {
                    stmt.replace(ValReplace);
                    store SI = (store) stmt;
                    if (!RegToAlloca.containsKey(SI.target) || SI.removed) continue;
                    alloca AI = RegToAlloca.get(SI.target);
                    IncomingValues.put(AI, SI.resource);
                    SI.removed = true;
                } else {
                    load LI = (load) stmt;
                    LI.replace(ValReplace);
                    if (!RegToAlloca.containsKey(LI.ptr)) continue;
                    if (LI.removed) {
                        ValReplace.put(LI.rd, LI.recorder);
                        continue;
                    }
                    alloca AI = RegToAlloca.get(LI.ptr);
                    ValReplace.put(LI.rd, IncomingValues.get(AI));
                    LI.removed = true;
                }
            } else if (stmt instanceof phi) {
                phi PI = (phi) stmt;
                if (PI.creator == null) PI.replace(ValReplace);
                else {
                    IncomingValues.put(PI.creator, PI.rd);
                }
            } else {
                stmt.replace(ValReplace);
            }
        }
        for (block successor : BB.successors) {
            for (phi PI : successor.Phis)
                if (PI.creator != null) PI.push_back(new entityBlockPair(IncomingValues.get(PI.creator), BB));
        }
        for (block child : BB.children) {
            Rename(child, new HashMap<>(IncomingValues));
        }
    }

    private void runInFunc(funcDef f) {
        // initialize?
        calcDominateTree(f);
        calcDominanceFrontier();
        // collect information
        RegToAlloca = new HashMap<>();
        for (alloca AI : f.allocas) {
            RegToAlloca.put(AI.rd, AI);
        }
        for (block BB : postOrderSequence) {
            for (statement stmt = BB.headStatement; stmt != null; stmt = stmt.next) {
                if (stmt instanceof user) {
                    if (stmt instanceof store) {
                        store SI = (store) stmt;
                        if (RegToAlloca.containsKey(SI.target)) {
                            RegToAlloca.get(SI.target).users.add(SI);
                        }
                    } else {
                        load LI = (load) stmt;
                        if (RegToAlloca.containsKey(LI.ptr)) {
                            RegToAlloca.get(LI.ptr).users.add(LI);
                        }
                    }
                }
            }
        }

        Iterator<alloca> iter = f.allocas.listIterator();
        AllocaInfo Info = new AllocaInfo();
        while (iter.hasNext()) {
            alloca AI = iter.next();
            if (AI.users.isEmpty()) {
                iter.remove();
                continue;
            }
            Info.analyseAlloca(AI);
            if (Info.storeCount == 1 && rewriteSingleStoreAlloca(AI, Info)) {
                //iter.remove();
                AI.removed = true;
                continue;
            }
            if (Info.OnlyUsedInOneBlock && promoteSingleBlockAlloca(AI, Info)) {
                //iter.remove();
                AI.removed = true;
                continue;
            }
            // insert phi
            HashSet<block> phiExist = new HashSet<>();
            LinkedList<block> W = new LinkedList<>(Info.DefiningBlocks);
            while (!W.isEmpty()) {
                block n = W.pop();
                for (block Y : n.DominatorFrontier)
                    if (!phiExist.contains(Y)) {
                        phi PI = new phi(new register(counter--), AI.irType);
                        PI.creator = AI;
                        Y.Phis.add(PI);
                        Y.push_front(PI);
                        phiExist.add(Y);
                        if (!Info.DefiningBlocks.contains(Y)) {
                            W.add(Y);
                        }
                    }
            }
            /*for (user user : AI.users) {
                if (user instanceof store) {
                    block StoreBB = user.parentBlock;
                    for (block DF : StoreBB.DominatorFrontier) {
                        if (Info.UsingBlocks.contains(DF) && !phiExist.contains(DF)) {
                            phi PI = new phi(new register(), AI.irType);
                            PI.creator = AI;
                            DF.push_front(PI);
                            DF.Phis.add(PI);
                            phiExist.add(DF);
                        }
                    }
                }
            }*/
        }
        if (f.allocas.isEmpty()) return;
        // rename
        HashMap<alloca, entity> IncomingValues = new HashMap<>();
        RegToAlloca = new HashMap<>();
        ValReplace = new HashMap<>();
        // put undefined value
        int allocaCnt = 0;
        for (alloca alloca : f.allocas) {
            // for debug
            alloca.allocaNumber = allocaCnt++;
            // build the map reg to alloca
            RegToAlloca.put(alloca.rd, alloca);
            // undefined initialization
            entity en;
            if (alloca.irType.ptrNum > 0) en = new constant();
            else en = new constant(0);
            IncomingValues.put(alloca, en);
        }

        for (block block : postOrderSequence) {
            block.visited = false;
            block.children = new ArrayList<>();
        }
        for (block block : postOrderSequence) {
            if (block != f.rootBlock) block.IDom.children.add(block);
        }
        Rename(f.rootBlock, IncomingValues);
        /*LinkedList<block> bfsQue = new LinkedList<>();
        bfsQue.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            System.out.println(BB + " DF: " + BB.DominatorFrontier + " IDOM: " + BB.IDom);
            for (statement stmt : BB.stmts) {
                if (stmt instanceof user) {
                    if (stmt instanceof store) {
                        stmt.replace(ValReplace);
                        store SI = (store) stmt;
                        if (!RegToAlloca.containsKey(SI.target) || SI.removed) continue;
                        alloca AI = RegToAlloca.get(SI.target);
                        IncomingValues.put(AI, SI.resource);
                        SI.removed = true;
                    } else {
                        load LI = (load) stmt;
                        if (!RegToAlloca.containsKey(LI.ptr)) continue;
                        if (LI.removed) {
                            ValReplace.put(LI.rd, LI.recorder);
                            continue;
                        }
                        alloca AI = RegToAlloca.get(LI.ptr);
                        ValReplace.put(LI.rd, IncomingValues.get(AI));
                        LI.removed = true;
                    }
                } else if (stmt instanceof phi) {
                    phi PI = (phi) stmt;
                    if (PI.creator == null) PI.replace(ValReplace);
                    else {
                        IncomingValues.put(PI.creator, PI.rd);
                    }
                } else {
                    stmt.replace(ValReplace);
                }
            }
            for (block successor : BB.successors) {
                for (phi PI : successor.Phis)
                    if (PI.creator != null) PI.push_back(new entityBlockPair(IncomingValues.get(PI.creator), BB));
                *//*if (!successor.visited) {
                    successor.visited = true;
                    bfsQue.add(successor);
                }*//*
            }
            for (block child : BB.children) {
                bfsQue.add(child);
            }
        }*/
        f.allocas.clear();
    }

    public void run() {
        pg.funcDefs.forEach(this::runInFunc);
    }
}
