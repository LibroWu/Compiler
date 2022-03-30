package IR;

import Util.error.internalError;
import Util.position;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class block {
    public LinkedList<statement> stmts = new LinkedList<>();
    public ArrayList<block> successors = new ArrayList<>(),predecessor = new ArrayList<>(),children = null;
    public LinkedList<phi> Phis = new LinkedList<>();
    //Maybe use hashset better
    public HashSet<block> DominatorFrontier = new HashSet<>();
    public block IDom = null;
    public terminalStmt tailStmt = null;
    public boolean jumpTo = false;
    public int loopDepth;
    public String comment = null;
    public boolean visited = false;
    public int depth = 0;
    //for debug
    public int blockIndex = 0;

    public block(int loopDepth) {
        this.loopDepth = loopDepth;
    }

    public void push_front(statement stmt){
        stmts.push(stmt);
    }

    public void push_back(statement stmt) {
        if (tailStmt != null) return;//todo throw new internalError("multiple tails of a block",new position(0,0));
        if (stmt instanceof user) {
            ((user) stmt).parentBlock = this;
        }
        if (stmt instanceof terminalStmt) {
            tailStmt = (terminalStmt) stmt;
            if (tailStmt instanceof br) {
                br b = (br) tailStmt;
                if (b.val==null) successors.add(b.trueBranch);
                else {
                    successors.add(b.trueBranch);
                    successors.add(b.falseBranch);
                }
            }
        }
        stmts.add(stmt);
    }

    // for debug
    @Override
    public String toString(){ return ""+blockIndex;}
}
