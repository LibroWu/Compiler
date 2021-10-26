package AST;

import Util.position;

public class jumpStmtNode extends stmtNode{

    public boolean isBreak,isContinue,isReturn;
    public exprNode expr=null;
    public jumpStmtNode(position pos,boolean br,boolean con) {
        super(pos);
        isBreak = br;
        isContinue = con;
        isReturn = !(br | con);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
