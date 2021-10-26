package AST;

import Util.position;

import java.util.ArrayList;

public class exprNode extends ASTNode{

    public ArrayList<assignExprNode> exprList = new ArrayList<>();

    public exprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
