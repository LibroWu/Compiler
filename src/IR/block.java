package IR;

import Util.error.internalError;
import Util.position;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class block {
    public statement headStatement = null, tailStatement = null;
    //public LinkedList<statement> stmts = new LinkedList<>();
    public HashSet<block> successors = new HashSet<>(), predecessor = new HashSet<>(), children = null;
    public LinkedList<phi> Phis = new LinkedList<>();
    //Maybe use hashset better
    public HashSet<block> DominatorFrontier = new HashSet<>();
    public block IDom = null;
    public terminalStmt tailStmt = null;
    public boolean jumpTo = false,reachable;
    public int loopDepth;
    public String comment = null;
    public boolean visited = false;
    static public int MaxDepth = 100000000;
    public int depth = MaxDepth;
    //for debug
    public int blockIndex = 0;

    public block(int loopDepth) {
        this.loopDepth = loopDepth;
    }

    public void push_front(statement stmt) {
        stmt.parentBlock = this;
        if (headStatement == null) headStatement = tailStatement = stmt;
        else {
            headStatement.prev = stmt;
            stmt.next = headStatement;
            headStatement = stmt;
        }
    }

    public void push_back(statement stmt) {
        if (tailStmt != null) return;//todo throw new internalError("multiple tails of a block",new position(0,0));
        stmt.parentBlock = this;
        if (stmt instanceof terminalStmt) {
            tailStmt = (terminalStmt) stmt;
            if (tailStmt instanceof br) {
                br b = (br) tailStmt;
                if (b.val == null) successors.add(b.trueBranch);
                else {
                    successors.add(b.trueBranch);
                    successors.add(b.falseBranch);
                }
            }
        }
        if (tailStatement == null) tailStatement = headStatement = stmt;
        else {
            tailStatement.next = stmt;
            stmt.prev = tailStatement;
            tailStatement = stmt;
        }
    }

    public void insert_after(statement s, statement in) {
        in.parentBlock = this;
        if (s.next == null) tailStatement = in;
        else s.next.prev = in;
        in.next = s.next;
        in.prev = s;
        s.next = in;
    }

    public void insert_before(statement s, statement in) {
        in.parentBlock = this;
        if (s.prev == null) headStatement = in;
        else s.prev.next = in;
        in.prev = s.prev;
        in.next = s;
        s.prev = in;
    }

    public void replace(statement s, statement r) {
        r.parentBlock = this;
        if (s.prev == null) headStatement = r;
        else s.prev.next = r;
        if (s.next == null) tailStatement = r;
        else s.next.prev = r;
        s.next = s.prev = null;
        s.parentBlock = null;
        s.removed = true;
    }

    public void delete_Statement(statement stmt) {
        if (stmt.prev == null) headStatement = stmt.next;
        else stmt.prev.next = stmt.next;
        if (stmt.next == null) tailStatement = stmt.prev;
        else stmt.next.prev = stmt.prev;
        stmt.prev = stmt.next = null;
        stmt.parentBlock = null;
        stmt.removed = true;
    }

    // for debug
    @Override
    public String toString() {
        return "" + blockIndex;
    }
}
