package AST;

import Util.position;

import java.util.ArrayList;

public class assignExprNode extends exprNode{

    public logicOrExprNode logicExpr;

    public assignExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
