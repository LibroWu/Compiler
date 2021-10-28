package AST;

import Util.position;

import java.util.ArrayList;

public class newArrayNode extends ASTNode{

    public String type;
    public int BracketPair = 0;
    public ArrayList<exprNode> exprList = null;

    public newArrayNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {visitor.visit(this);}
}
