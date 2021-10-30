package AST;

import Util.position;

public class primaryExprNode extends exprNode{

    public boolean isLiteral = false,isThis = false,isIdExpr=false,isLambda=false,isExpr = false;
    public exprNode expr;

    public primaryExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
