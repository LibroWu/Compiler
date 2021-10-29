package AST;

import Util.position;

public class funcDefNode extends ASTNode {

    public boolean isConstructFunc = false;
    public String id;
    public arraySpecifierNode arraySpecifier = null;
    public compoundStmtNode suite = null;
    public funcParameterNode parameters = null;

    public funcDefNode(position pos, String Id) {
        super(pos);
        id = Id;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
