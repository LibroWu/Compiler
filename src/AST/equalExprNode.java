package AST;

public class equalExprNode extends exprNode{
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
