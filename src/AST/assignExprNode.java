package AST;

import Util.position;

public class assignExprNode extends exprNode{
    public assignExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
