package AST;

import Util.position;

public class declNode extends ASTNode{

    public boolean isDeclStmt=false,isFuncDef=false;
    public funcDefNode funcDef=null;
    public declStmtNode declStmt=null;

    public declNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
