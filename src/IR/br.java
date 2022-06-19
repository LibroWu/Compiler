package IR;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class br extends terminalStmt {
    //null if jump directly
    public register val;
    public block trueBranch, falseBranch;
    // for liveness analysis
    @Override
    public void fillSet() {
        if (val!=null) use.add(val);
    }

    @Override
    public void calcInst() {
        liveOut = new HashSet<>();
        if (trueBranch.headStatement!=null) {
            liveOut.addAll(trueBranch.headStatement.liveIn);
        }
        if (falseBranch!=null && falseBranch.headStatement!=null) {
            liveOut.addAll(falseBranch.headStatement.liveIn);
        }
        liveIn = new HashSet<>(liveOut);
        if (val!=null) liveIn.add(val);
    }

    @Override
    public boolean check() {
        return false;
    }

    @Override
    public register getReg() {
        return null;
    }

    //
    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(val)) val = (register) ValReplace.get(val);
    }

    @Override
    public void init() {
        if (val != null) val.uses = new LinkedList<>();
    }

    @Override
    public void analyseUseDef() {
        if (val != null) val.uses.add(this);
    }

    @Override
    public boolean isResConst() {
        return false;
    }

    @Override
    public void removeStmt(LinkedList<statement> W) {
        // will not call this function
    }

    static private void removeUnreachableBlock(block BB) {
        BB.reachable = false;
        //System.out.println("------ "+BB+" successors:"+BB.successors+" pred "+BB.predecessor);
        for (block successor : BB.successors) {
            successor.predecessor.remove(BB);
            if (successor.predecessor.size() == 0) removeUnreachableBlock(successor);
        }
    }

    @Override
    public statement replaceRegWithEntity(register rs, entity en) {
        statement newBr = this;
        if (en instanceof register) {
            val = (register) en;
            ((register) en).uses.add(this);
        } else if (rs == val) {
            constant con = (constant) en;
            block Parent = parentBlock;
            if (con.getBoolValue()) {
                newBr = new br(null, trueBranch, null);
                Parent.replace(this, newBr);
                falseBranch.predecessor.remove(Parent);
                if (falseBranch.predecessor.size() == 0) removeUnreachableBlock(falseBranch);
                Parent.successors.clear();
                Parent.successors.add(trueBranch);
            } else {
                newBr = new br(null, falseBranch, null);
                Parent.replace(this, newBr);
                trueBranch.predecessor.remove(Parent);
                if (trueBranch.predecessor.size() == 0) removeUnreachableBlock(trueBranch);
                Parent.successors.clear();
                Parent.successors.add(falseBranch);
            }
        }
        return newBr;
    }

    @Override
    public void activatePropagate(LinkedList<statement> W) {
        if (val!=null && !val.def.inWorklist) {
            val.def.inWorklist = true;
            val.def.isActivate = true;
            W.add(val.def);
        }
    }

    @Override
    public statement clone(HashMap<register, entity> ValReplace) {
        return new br((register) ValReplace.get(val),null,null);
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

    public br(register val, block trueBranch, block falseBranch) {
        this.val = val;
        this.trueBranch = trueBranch;
        this.falseBranch = falseBranch;
    }
}
