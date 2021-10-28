package AST;

import Util.position;

import java.util.ArrayList;

public class relationExprNode extends exprNode{

    public ArrayList<String> OpList = null;

    public relationExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
