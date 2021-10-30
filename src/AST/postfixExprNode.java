package AST;

import Util.position;
import Util.Type.funcType;

public class postfixExprNode extends exprNode{

    public boolean isSelfOp = false, isDotOp = false, isCallOp = false, isLocateOp = false,isSelfPlus=false;
    public primaryExprNode primaryExpr = null;
    public postfixExprNode postfixExpr = null;
    public exprNode Expr =null;
    public funcType func = null;

    public postfixExprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
