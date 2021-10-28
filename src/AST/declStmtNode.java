package AST;

import Util.position;

import java.util.ArrayList;

public class declStmtNode extends stmtNode{

    public boolean isClassDef = false,fail=false;
    public classNode struct = null;
    public arraySpecifierNode arraySpecifier = null;
    public String varType = null;
    public ArrayList<declaratorNode> declaratorList = null;
    public declStmtNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
