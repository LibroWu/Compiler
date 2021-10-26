package AST;

import Util.position;

public class exprStmtNode extends stmtNode{

    public exprNode expr = null;

    public exprStmtNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
