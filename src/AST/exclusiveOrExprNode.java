package AST;

import Util.position;

import java.util.ArrayList;

public class exclusiveOrExprNode extends exprNode{

    public exclusiveOrExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
