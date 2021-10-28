package AST;

import Util.position;

import java.util.ArrayList;

public class equalExprNode extends exprNode{

    public ArrayList<String> OpList = null;

    public equalExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
