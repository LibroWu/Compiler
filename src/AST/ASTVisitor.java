package AST;

public interface ASTVisitor {
    void visit(RootNode it);
    void visit(addictiveExprNode it);
    void visit(andExprNode it);
    void visit(arraySpecifierNode it);
    void visit(assignExprNode it);
    void visit(classNode it);
    void visit(compoundStmtNode it);
    void visit(constExprNode it);
    void visit(declNode it);
    void visit(declStmtNode it);
    void visit(declaratorNode it);
    void visit(funcParameterNode it);
    void visit(equalExprNode it);
    void visit(exclusiveOrExprNode it);
    void visit(exprNode it);
    void visit(exprStmtNode it);
    void visit(idExprNode it);
    void visit(inclusiveOrExprNode it);
    void visit(iterStmtNode it);
    void visit(jumpStmtNode it);
    void visit(lambdaExprNode it);
    void visit(logicAndExprNode it);
    void visit(logicOrExprNode it);
    void visit(multiExprNode it);
    void visit(newExprNode it);
    void visit(newArrayNode it);
    void visit(postfixExprNode it);
    void visit(primaryExprNode it);
    void visit(relationExprNode it);
    void visit(selectStmtNode it);
    void visit(shiftExprNode it);
    void visit(stmtNode it);
    void visit(unaryExprNode it);
    void visit(funcDefNode it);
}
