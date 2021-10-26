package AST;

import Util.position;

public class addictiveExprNode extends exprNode{
    public addictiveExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
