package IR;

import java.util.HashMap;
import java.util.HashSet;
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

    // for liveness analysis
    @Override
    public void fillSet() {
        def.add(rd);
    }

    @Override
    public void calcInst() {
        liveOut = new HashSet<>();
        if (next!=null) {
            liveOut.addAll(next.liveIn);
        }
        liveIn = new HashSet<>(liveOut);
        liveIn.removeAll(def);
    }

    @Override
    public boolean check() {
        return !liveOut.contains(rd);
    }

    @Override
    public register getReg() {
        return rd;
    }

    //
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
    public statement clone(HashMap<register, entity> ValReplace) {
        // will not happen
        // all allocas are promoted to register
        return null;
    }

    @Override
    public boolean isLoopInvariant(HashSet<block> loop, HashSet<register> live) {
        return false;
    }

    @Override
    public void loopInvariantDelivery(LinkedList<statement> W, LinkedList<statement> promotableStatements, HashSet<block> loop, HashSet<register> live) {

    }

    @Override
    public boolean execute(HashMap<register, Integer> vrMap, HashMap<register, Integer> globalVars, block fromBlock, byte[] bytes) {
        return false;
    }

    @Override
    public String toString() {
        return allocaNumber + " " + rd;
    }
}