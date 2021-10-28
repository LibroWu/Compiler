package AST;

import Util.position;

import java.util.ArrayList;

public class unaryExprNode extends exprNode{

    public postfixExprNode postfixExpr = null;
    public unaryExprNode unaryExpr = null;
    public newExprNode newExpr = null;
    public String op = null;
    public unaryExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
