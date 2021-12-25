package IR;

import Util.error.internalError;
import Util.position;

import java.util.ArrayList;
import java.util.LinkedList;

public class block {
    private LinkedList<statement> stmts = new LinkedList<>();
    public terminalStmt tailStmt = null;
    public block() {}
    public void push_back(statement stmt) {
        stmts.add(stmt);
        if (stmt instanceof terminalStmt) {
            //todo if (tailStmt != null) throw new internalError("multiple tails of a block",new position(0,0));
            tailStmt = (terminalStmt) stmt;
        }
    }
    public ArrayList<statement> stmts() {return new ArrayList<>(stmts);}
    public ArrayList<block> successors(){
        ArrayList<block> ret = new ArrayList<>();
        if (tailStmt instanceof br) {
            br tailTmp = (br) tailStmt;
            if (tailTmp.op==null) {
                ret.add(tailTmp.trueBranch);
            } else {
                ret.add(tailTmp.trueBranch);;
                ret.add(tailTmp.falseBranch);
            }
        }
        return ret;
    }
}
