package AST;

import Util.position;

public class newExprNode extends exprNode{

    public newExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
