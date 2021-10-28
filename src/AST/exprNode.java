package AST;

import Util.position;

import java.util.ArrayList;

public class exprNode extends ASTNode{

    public ArrayList<exprNode> exprList = null;

    public exprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
