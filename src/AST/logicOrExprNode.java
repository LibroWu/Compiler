package AST;

import Util.position;

public class logicOrExprNode extends exprNode{

    public logicOrExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
