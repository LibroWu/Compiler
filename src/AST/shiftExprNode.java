package AST;

import Util.position;

import java.util.ArrayList;

public class shiftExprNode extends exprNode{

    public ArrayList<String> OpList = null;

    public shiftExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
