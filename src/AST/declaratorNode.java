package AST;

import Util.position;

public class declaratorNode extends ASTNode {

    public String Identifier = null;
    public exprNode expr = null;

    public declaratorNode(position pos, String id) {
        super(pos);
        Identifier = id;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
