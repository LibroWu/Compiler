package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class alloca extends statement {
    public register rd;
    public int align;
    public IRType irType;
    public LinkedList<user> users;
    //for debug
    public int allocaNumber = 0;

    public alloca(register rd, IRType irType) {
        this.rd = rd;
        this.align = irType.getAlign();
        this.irType = irType;
        this.users = new LinkedList<>();
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {

    }

    @Override
    public void init() {
        rd.uses = new LinkedList<>();
    }

    @Override
    public void analyseUseDef() {
        rd.def = this;
    }

    @Override
    public boolean isResConst() {
        return false;
    }

    @Override
    public void removeStmt(LinkedList<statement> W) {
        // will not call this function
    }

    @Override
    public statement replaceRegWithEntity(register rs, entity en) {
        // will not call this function
        return this;
    }

    @Override
    public void activatePropagate(LinkedList<statement> W) {

    }

    @Override
    public String toString() {
        return allocaNumber + " " + rd;
    }
}