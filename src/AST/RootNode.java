package AST;

import Util.position;

import java.util.ArrayList;

public class RootNode extends ASTNode {
    public ArrayList<declNode> declList = new ArrayList<>();

    public RootNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
