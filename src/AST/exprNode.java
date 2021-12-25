package AST;

import Util.Type.Type;
import Util.position;
import IR.entity;
import IR.register;
import IR.IRType;

import java.util.ArrayList;

public class exprNode extends ASTNode{

    public ArrayList<exprNode> exprList = null;
    public Type type = null;
    public entity rd = null;
    public register idReg = null;
    public IRType irType = null;


    public exprNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
