package AST;

import Util.position;

import java.util.ArrayList;

public class compoundStmtNode extends stmtNode{

    public ArrayList<stmtNode> stmtArray = null;
    public String returnType = "void";
    public int dimension = 0;

    public compoundStmtNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
