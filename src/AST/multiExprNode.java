package AST;

import Util.position;

import java.util.ArrayList;

public class multiExprNode extends exprNode{

    public ArrayList<String> OpList = null;

    public multiExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
