package AST;

import Util.position;

import java.util.ArrayList;

public class andExprNode extends exprNode{

    public andExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
