package IR;

import Util.error.internalError;
import Util.position;

import java.util.ArrayList;
import java.util.LinkedList;

public class block {
    private LinkedList<statement> stmts = new LinkedList<>();
    public ArrayList<block> successors = new ArrayList<>();
    public terminalStmt tailStmt = null;
    public boolean jumpTo = false;
    public int loopDepth;
    public String comment = null;
    public block(int loopDepth) {
        this.loopDepth = loopDepth;
    }

    public void push_front(statement stmt){
        stmts.push(stmt);
    }

    public void push_back(statement stmt) {
        if (stmt instanceof terminalStmt) {
            if (tailStmt != null) return;//todo throw new internalError("multiple tails of a block",new position(0,0));
            tailStmt = (terminalStmt) stmt;
        }
        stmts.add(stmt);
    }
    public ArrayList<statement> stmts() {return new ArrayList<>(stmts);}
}
