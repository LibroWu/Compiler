package IR;

import java.util.LinkedList;

public class phi extends statement{

    public IRType rdType;
    public register rd;
    public LinkedList<entityBlockPair> entityBlockPairs = new LinkedList<>();

    public void push_back(entityBlockPair t) {
        entityBlockPairs.add(t);
    }

    public phi(register rd,IRType irType) {
        this.rd = rd;
        this.rdType = irType;
    }
}
