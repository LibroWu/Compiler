package AST;

import Util.position;

import java.util.ArrayList;

public class inclusiveOrExprNode extends exprNode{

    public inclusiveOrExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
