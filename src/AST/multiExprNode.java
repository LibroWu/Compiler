package AST;

import Util.position;

public class multiExprNode extends exprNode{
    public multiExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
