package AST;

import Util.position;

public class constExprNode extends exprNode{
    public constExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
