package Frontend;

import AST.*;
import Util.Type;
import Util.globalScope;

import java.util.HashMap;

public class SymbolCollector implements ASTVisitor {
    private globalScope gScope;
    public SymbolCollector(globalScope gScope) {
        this.gScope = gScope;
    }
    @Override
    public void visit(RootNode it) {
        it.declList.forEach(dc -> dc.accept(this));
    }

    @Override public void visit(declNode it){}
    @Override public void visit(classNode it) {}
    @Override public void visit(addictiveExprNode it){}
    @Override public void visit(andExprNode it){}
    @Override public void visit(arraySpecifierNode it) {}
    @Override public void visit(assignExprNode it){}
    @Override public void visit(compoundStmtNode it){}
    @Override public void visit(constExprNode it){}
    @Override public void visit(declStmtNode it){}
    @Override public void visit(declaratorNode it) {}
    @Override public void visit(funcParameterNode it) {}
    @Override public void visit(equalExprNode it){}
    @Override public void visit(exclusiveOrExprNode it){}
    @Override public void visit(exprNode it){}
    @Override public void visit(exprStmtNode it){}
    @Override public void visit(funcDefNode it){}
    @Override public void visit(idExprNode it){}
    @Override public void visit(inclusiveOrExprNode it){}
    @Override public void visit(iterStmtNode it){}
    @Override public void visit(jumpStmtNode it){}
    @Override public void visit(lambdaExprNode it){}
    @Override public void visit(logicAndExprNode it){}
    @Override public void visit(logicOrExprNode it){}
    @Override public void visit(multiExprNode it){}
    @Override public void visit(newExprNode it){}
    @Override public void visit(postfixExprNode it){}
    @Override public void visit(primaryExprNode it){}
    @Override public void visit(relationExprNode it){}
    @Override public void visit(selectStmtNode it){}
    @Override public void visit(shiftExprNode it){}
    @Override public void visit(stmtNode it) {}
    @Override public void visit(unaryExprNode it) {}
}
