package AST;

import Util.position;

import java.util.ArrayList;

public class funcParameterNode extends ASTNode {

    public ArrayList<arraySpecifierNode> varType=new ArrayList<>();
    public ArrayList<String> Id = new ArrayList<>();

    public funcParameterNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) { visitor.visit(this);}
}
