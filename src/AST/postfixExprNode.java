package AST;

import Util.position;

public class postfixExprNode extends exprNode{
    public postfixExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
