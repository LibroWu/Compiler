package AST;

import Util.position;

import java.util.ArrayList;

public class logicOrExprNode extends exprNode{

    public logicOrExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
