package AST;

import Util.position;

public class constExprNode extends exprNode {

    public String literal = null;
    public boolean isInt = false, isString = false, isBool = false, isNull = false;

    public constExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
