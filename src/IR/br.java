package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class br extends terminalStmt {
    //null if jump directly
    public register val;
    public block trueBranch, falseBranch;

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
        for (block successor : BB.successors) {
            successor.predecessor.remove(BB);
            if (successor.predecessor.size() == 0) removeUnreachableBlock(successor);
        }
    }

    @Override
    public statement replaceRegWithEntity(register rs, entity en) {
        constant con = (constant) en;
        statement newBr = this;
        if (rs == val) {
            block Parent = parentBlock;
            if (con.getBoolValue()) {
                newBr = new br(null, trueBranch, null);
                Parent.replace(this,newBr );
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

    public br(register val, block trueBranch, block falseBranch) {
        this.val = val;
        this.trueBranch = trueBranch;
        this.falseBranch = falseBranch;
    }
}
