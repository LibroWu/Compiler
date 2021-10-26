package AST;

import Util.position;

import java.util.ArrayList;

public class iterStmtNode extends stmtNode{

    public boolean isFor=false,isWhile=false;
    public exprNode cond = null,incrExpr=null;
    public stmtNode mainStmt = null,initStmt = null;
    public iterStmtNode(position pos,boolean isfor,boolean iswhile) {
        super(pos);
        isFor = isfor;
        isWhile = iswhile;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
