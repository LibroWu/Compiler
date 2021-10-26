package AST;

import Util.position;

public class primaryExprNode extends exprNode{

    public primaryExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
