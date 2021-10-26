package AST;

import Util.position;

public class relationExprNode extends exprNode{

    public relationExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
