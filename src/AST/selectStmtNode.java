package AST;

import Util.position;

public class selectStmtNode extends stmtNode{

    public exprNode cond=null;
    public stmtNode trueStmt=null,falseStmt=null;

    public selectStmtNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
