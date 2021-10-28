package AST;

import Util.position;

public class postfixExprNode extends exprNode{

    public boolean isSelfOp = false, isDotOp = false, isCallOp = false, isLocateOp = false,isSelfPlus=false;
    public primaryExprNode primaryExpr = null;
    public postfixExprNode postfixExpr = null;
    public exprNode Expr =null;

    public postfixExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
