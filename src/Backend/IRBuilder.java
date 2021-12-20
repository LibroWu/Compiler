package Backend;
import AST.*;

import IR.*;
import Util.Scope;
import Util.error.semanticError;
import Util.globalScope;
import Util.Type.*;

import java.util.Objects;

public class IRBuilder implements ASTVisitor {
    private block currentBlock = null;
    private funcDef currentFunc = null;
    private program pg;
    private classType currentStruct = null;
    private Scope currentScope;
    private globalScope gScope;

    public IRBuilder(program pg, globalScope gScope){
        this.pg = pg;
        currentScope = this.gScope = gScope;
    }

    @Override
    public void visit(RootNode it) {
        it.declList.forEach(dc -> dc.accept(this));
    }

    @Override
    public void visit(declNode it) {
        if (it.isFuncDef) it.funcDef.accept(this);
        else it.declStmt.accept(this);
    }

    @Override
    public void visit(funcDefNode it) {
        currentFunc = new funcDef(currentFunc);
        currentBlock = currentFunc.rootBlock;
        pg.push_back(currentFunc);
        String idPrefix = ((currentStruct==null)? "": "_"+currentStruct.name) ;
        currentFunc.funcId = idPrefix+it.id;
        int counter = 0;
        funcType func;
        if (currentStruct != null) {
            if (currentStruct.methods.containsKey(it.id)) {
                func = currentStruct.methods.get(it.id);

            }
        } else func = (funcType) gScope.getFunctionFromName(it.id, it.pos);
        if (it.parameters != null) {

        }
        //funcSuite = true;
        it.suite.accept(this);
        //returnType = null;
        currentScope = currentScope.parentScope();
        currentFunc = currentFunc.parentFunc;
    }
z
    @Override
    public void visit(arraySpecifierNode it) {
    }

    @Override
    public void visit(compoundStmtNode it) {
        if (it.stmtArray!=null) {
            it.stmtArray.forEach(this::visit);
        }
    }

    @Override
    public void visit(declStmtNode it) {
        if (it.isClassDef) it.struct.accept(this);
        else {

        }
    }

    @Override
    public void visit(classNode it) {
    }

    @Override
    public void visit(exprStmtNode it) {
    }

    @Override
    public void visit(selectStmtNode it) {
    }

    @Override
    public void visit(iterStmtNode it) {
    }

    @Override
    public void visit(jumpStmtNode it) {
        if (it.isReturn) {
            it.expr.accept(this);
        } else {

        }
    }

    @Override
    public void visit(stmtNode it) {
    }

    @Override
    public void visit(exprNode it) {
    }

    @Override
    public void visit(assignExprNode it) {
    }


    @Override
    public void visit(logicOrExprNode it) {
    }

    @Override
    public void visit(logicAndExprNode it) {
    }

    @Override
    public void visit(inclusiveOrExprNode it) {
    }

    @Override
    public void visit(exclusiveOrExprNode it) {
    }

    @Override
    public void visit(andExprNode it) {
    }

    @Override
    public void visit(equalExprNode it) {
    }

    @Override
    public void visit(relationExprNode it) {
    }

    @Override
    public void visit(shiftExprNode it) {
    }

    @Override
    public void visit(addictiveExprNode it) {
    }

    @Override
    public void visit(multiExprNode it) {
    }

    @Override
    public void visit(unaryExprNode it) {
    }

    @Override
    public void visit(newExprNode it) {
    }

    @Override
    public void visit(postfixExprNode it) {
    }

    @Override
    public void visit(primaryExprNode it) {
    }

    @Override
    public void visit(constExprNode it) {
    }

    @Override
    public void visit(lambdaExprNode it) {
    }

    @Override
    public void visit(newArrayNode it) {

    }

    @Override
    public void visit(funcParameterNode it) {

    }

    @Override
    public void visit(idExprNode it) {
    }

    @Override
    public void visit(declaratorNode it) {

    }
}
