package AST;

import Util.position;

public class arraySpecifierNode extends ASTNode{

    public String type = null;
    public int emptyBracketPair = 0;

    public arraySpecifierNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) { visitor.visit(this); }
}
