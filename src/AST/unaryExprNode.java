package AST;

import Util.position;

public class unaryExprNode extends exprNode{

    public unaryExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
