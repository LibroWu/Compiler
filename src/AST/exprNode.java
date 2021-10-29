package AST;

import Util.Type.Type;
import Util.position;

import java.util.ArrayList;

public class exprNode extends ASTNode{

    public ArrayList<exprNode> exprList = null;
    public Type type = null;

    public exprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
