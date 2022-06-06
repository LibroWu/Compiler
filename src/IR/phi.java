package IR;

import Assembly.AsmBlock;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class phi extends statement {
    public IRType rdType;
    public register rd;
    public LinkedList<entityBlockPair> entityBlockPairs = new LinkedList<>();
    public alloca creator = null;
    public AsmBlock asmParentBlock = null;
    // for liveness analysis
    @Override
    public void fillSet() {
        def.add(rd);
        for (entityBlockPair entityBlockPair : entityBlockPairs) {
            if (entityBlockPair.en instanceof register) {
                use.add((register) entityBlockPair.en);
            }
        }
    }

    @Override
    public void calcInst() {
        liveOut = new HashSet<>();
        if (next!=null) {
            liveOut.addAll(next.liveIn);
        }
        liveIn = new HashSet<>(liveOut);
        liveIn.removeAll(def);
        liveIn.addAll(use);
    }

    @Override
    public boolean check() {
        return !liveOut.contains(rd);
    }
    //
    public void push_back(entityBlockPair t) {
        entityBlockPairs.add(t);
    }

    public phi(register rd, IRType irType) {
        this.rd = rd;
        this.rdType = irType;
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        for (entityBlockPair entityBlockPair : entityBlockPairs) {
            if (ValReplace.containsKey(entityBlockPair)) entityBlockPair.en = ValReplace.get(entityBlockPair.en);
        }
    }

    @Override
    public void init() {
        rd.uses = new LinkedList<>();
        rd.def = this;
    }

    @Override
    public void analyseUseDef() {
        for (entityBlockPair entityBlockPair : entityBlockPairs) {
            if (entityBlockPair.en instanceof register) {
                register rs = (register) entityBlockPair.en;
                rs.uses.add(this);
            }
        }
    }

    @Override
    public boolean isResConst() {
        entity en = null;
        for (entityBlockPair entityBlockPair : entityBlockPairs) {
            if (parentBlock.predecessor.contains(entityBlockPair.bl)) {
                if (en == null) en = entityBlockPair.en;
                else if (!en.entityEquals(entityBlockPair.en)) return false;
            }
        }
        return true;
    }

    @Override
    public void removeStmt(LinkedList<statement> W) {
        entity con = null;
        for (entityBlockPair entityBlockPair : entityBlockPairs) {
            if (parentBlock.predecessor.contains(entityBlockPair.bl)) {
                con = entityBlockPair.en;
                break;
            }
        }
        for (statement use : rd.uses) {
            statement stmt = use.replaceRegWithEntity(rd, con);
            if (!stmt.inWorklist) {
                stmt.inWorklist = true;
                W.push(stmt);
            }
        }
        parentBlock.delete_Statement(this);
    }

    @Override
    public statement replaceRegWithEntity(register rs, entity en) {
        boolean flag = false;
        for (entityBlockPair entityBlockPair : entityBlockPairs) {
            if (entityBlockPair.en == rs) {
                entityBlockPair.en = en;
                flag = true;
            }
        }
        if (flag && en instanceof register) ((register) en).uses.add(this);
        return this;
    }

    @Override
    public void activatePropagate(LinkedList<statement> W) {
        for (entityBlockPair entityBlockPair : entityBlockPairs) {
            statement s = entityBlockPair.bl.tailStatement;
            if (!s.inWorklist) {
                s.inWorklist = true;
                s.isActivate = true;
                W.add(s);
            }
            if (entityBlockPair.en instanceof register) {
                register rs = (register) entityBlockPair.en;
                if (rs.def != null && !rs.def.inWorklist) {
                    rs.def.inWorklist = true;
                    rs.def.isActivate = true;
                    W.add(rs.def);
                }
            }
        }
    }

    @Override
    public statement clone(HashMap<register, entity> ValReplace) {
        register shdRd = new register();
        phi shdPhi = new phi(shdRd, rdType);
        ValReplace.put(rd, shdRd);
        // replace the block later
        for (entityBlockPair entityBlockPair : entityBlockPairs) {
           shdPhi.push_back(new entityBlockPair(entityBlockPair.en,entityBlockPair.bl));
        }
        return shdPhi;
    }
}
