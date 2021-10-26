package AST;

import Util.position;

public class lambdaExprNode extends exprNode{
    public lambdaExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
