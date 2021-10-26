package AST;

import Util.Type;
import Util.position;

public class funcDefNode extends ASTNode {

    public boolean isConstructFunc = false;
    public String returnType, id;
    public compoundStmtNode suite = null;
    public funcParameterNode parameters = null;

    //parameters

    public funcDefNode(position pos, String rt, String Id) {
        super(pos);
        returnType = rt;
        id = Id;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
