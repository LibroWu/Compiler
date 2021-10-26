package AST;

import Util.position;

public class shiftExprNode extends exprNode{
    public shiftExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
