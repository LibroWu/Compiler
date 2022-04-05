package IR;

import Assembly.AsmBlock;

import java.util.HashMap;
import java.util.LinkedList;

public class phi extends statement{

    public IRType rdType;
    public register rd;
    public LinkedList<entityBlockPair> entityBlockPairs = new LinkedList<>();
    public alloca creator = null;
    public AsmBlock asmParentBlock = null;

    public void push_back(entityBlockPair t) {
        entityBlockPairs.add(t);
    }

    public phi(register rd,IRType irType) {
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
        constant en=null;
        for (entityBlockPair entityBlockPair : entityBlockPairs) {
            if (parentBlock.predecessor.contains(entityBlockPair.bl) ) {
                if (entityBlockPair.en instanceof register)return false;
                if (en == null) en = (constant) entityBlockPair.en;
                else if (!en.constEquals((constant) entityBlockPair.en)) return false;
            }
        }
        return true;
    }

    @Override
    public void removeStmt(LinkedList<statement> W) {
        constant con = null;
        for (entityBlockPair entityBlockPair : entityBlockPairs) {
            if (parentBlock.predecessor.contains(entityBlockPair.bl) ) {
                con = (constant) entityBlockPair.en;
                break;
            }
        }
        for (statement use : rd.uses) {
            statement stmt = use.replaceRegWithEntity(rd,con);
            if (!stmt.inWorklist) {
                stmt.inWorklist = true;
                W.add(stmt);
            }
        }
        parentBlock.delete_Statement(this);
    }

    @Override
    public statement replaceRegWithEntity(register rs, entity en) {
        for (entityBlockPair entityBlockPair : entityBlockPairs) {
            if (entityBlockPair.en == rs) entityBlockPair.en = en;
        }
        return this;
    }
}
