package AST;

import Util.position;

public class andExprNode extends exprNode{
    public andExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
