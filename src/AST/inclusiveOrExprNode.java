package AST;

import Util.position;

public class inclusiveOrExprNode extends exprNode{

    public inclusiveOrExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
