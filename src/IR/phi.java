package IR;

import Assembly.AsmBlock;

import java.util.HashMap;
import java.util.LinkedList;

public class phi extends statement{

    public IRType rdType;
    public register rd;
    public LinkedList<entityBlockPair> entityBlockPairs = new LinkedList<>();
    public alloca creator = null;
    public AsmBlock parentBlock = null;

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
            if (ValReplace.containsValue(entityBlockPair)) entityBlockPair.en = ValReplace.get(entityBlockPair.en);
        }
    }
}
