package AST;

import Util.position;

public class exclusiveOrExprNode extends exprNode{
    public exclusiveOrExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
