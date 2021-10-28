package AST;

import Util.position;

import java.util.ArrayList;

public class addictiveExprNode extends exprNode{

    public ArrayList<String> OpList = null;

    public addictiveExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
