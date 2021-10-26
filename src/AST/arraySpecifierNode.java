package AST;

import Util.position;

public class arraySpecifierNode extends ASTNode{

    public arraySpecifierNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) { visitor.visit(this); }
}
