package AST;

import Util.position;

import java.util.ArrayList;

public class classNode extends ASTNode {

    public String name;
    public ArrayList<declNode> declList = new ArrayList<>();
    public funcDefNode constructFunc = null;

    public classNode(position pos, String id) {
        super(pos);
        name = id;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
