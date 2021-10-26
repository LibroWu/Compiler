package AST;

import Util.position;

public class logicAndExprNode extends exprNode{

    public logicAndExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
