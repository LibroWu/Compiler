package AST;

import Util.position;

public class idExprNode extends exprNode{

    public String Id = null;

    public idExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
