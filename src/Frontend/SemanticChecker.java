package Frontend;

import AST.*;
import Util.Scope;
import Util.Type.Type;
import Util.error.semanticError;
import Util.globalScope;
import Util.position;

import java.util.Objects;

public class SemanticChecker implements ASTVisitor {
    private Scope currentScope;
    private globalScope gScope;
    //For currentStruct can be Type, classType and funcType,
    // we use boolean inClassDefine and returnType to specify this.
    private Type currentStruct = null;
    private Boolean hasMain = false, inClassDefine = false;
    private position posMain = null;
    //if returnType is not null, then the visitor is in a function
    private arraySpecifierNode returnType = null;
    private int inLoop = 0;

    public SemanticChecker(globalScope gScope) {
        currentScope = this.gScope = gScope;
    }

    @Override
    public void visit(RootNode it) {
        it.declList.forEach(dc -> dc.accept(this));
        if (!hasMain)
            throw new semanticError("the program does not have main function", it.pos);
    }

    @Override
    public void visit(declNode it) {
        if (it.isFuncDef) it.funcDef.accept(this);
        else it.declStmt.accept(this);
    }

    @Override
    public void visit(funcDefNode it) {
        currentScope = new Scope(currentScope);
        //check the main function
        if (Objects.equals(it.id, "main")) {
            if (hasMain)
                throw new semanticError("the program has duplicated main function, first defined in " + posMain.toString(), it.pos);
            if (!Objects.equals(it.arraySpecifier.type, "int"))
                throw new semanticError("the return type of main function is not int", it.pos);
            if (it.parameters != null) throw new semanticError("the main function has parameters", it.pos);
            hasMain = true;
            posMain = it.pos;
        }
        //todo if (it.parameters != null) it.parameters.varType.forEach(var -> var.accept(this));

        if (it.isConstructFunc) {
            returnType = new arraySpecifierNode(it.pos);
            returnType.type = "void";
        } else {
            returnType = it.arraySpecifier;
            gScope.getTypeFromName(returnType.type,returnType.pos);
        }
        it.suite.accept(this);
        returnType = null;
        currentScope = currentScope.parentScope();
    }

    @Override
    public void visit(arraySpecifierNode it) {
        gScope.getTypeFromName(it.type,it.pos);
    }

    @Override
    public void visit(compoundStmtNode it) {
        if (it.stmtArray != null) {
            currentScope = new Scope(currentScope);
            it.stmtArray.forEach(stmt -> {
                stmt.accept(this);
            });
            currentScope = currentScope.parentScope();
        }
    }

    @Override
    public void visit(declStmtNode it) {
        if (it.isClassDef) it.struct.accept(this);
        else {
            if (it.fail) throw new semanticError("declarator statement error", it.pos);
            it.arraySpecifier.accept(this);
            it.declaratorList.forEach(declarator -> {
                    //todo add array type into gScope
                    //currentScope.defineVariable(declarator,gScope.getTypeFromName());
            });
        }
    }

    @Override
    public void visit(classNode it) {
        currentStruct = gScope.getTypeFromName(it.name, it.pos);
        it.declList.forEach(decl -> decl.accept(this));
        if (it.constructFunc != null) it.constructFunc.accept(this);
        currentStruct = null;
    }

    @Override
    public void visit(exprStmtNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(selectStmtNode it) {
        it.cond.accept(this);
        if (it.cond.type.typeType==Type.Types.BOOL_TYPE) throw new semanticError("the condition's result is not boolean", it.cond.pos);
        if (it.trueStmt != null) it.trueStmt.accept(this);
        if (it.falseStmt != null) it.falseStmt.accept(this);
    }

    @Override
    public void visit(iterStmtNode it) {
        currentScope = new Scope(currentScope);
        if (it.isWhile) {
            if (it.cond == null) throw new semanticError("empty condition", it.cond.pos);
            it.cond.accept(this);
            if (!it.cond.type.isBool) throw new semanticError("the condition's result is not boolean", it.cond.pos);
        } else {
            if (it.cond != null) {
                it.cond.accept(this);
                if (!it.cond.type.isBool) throw new semanticError("the condition's result is not boolean", it.cond.pos);
            }
            if (it.initStmt != null) it.initStmt.accept(this);
            if (it.incrExpr != null) it.incrExpr.accept(this);
        }
        inLoop++;
        it.mainStmt.accept(this);
        inLoop--;
        currentScope = currentScope.parentScope();
    }

    @Override
    public void visit(jumpStmtNode it) {
        if (it.isReturn) {
            if (returnType == null) throw new semanticError("return happened outside of the function", it.pos);
            if (it.expr != null) {
                if (Objects.equals(returnType.type, "void"))
                    throw new semanticError("return value in void function", it.pos);
                it.expr.accept(this);
                if (!Objects.equals(it.expr.type.type, returnType.type))
                    throw new semanticError("mismatch of the type in return", it.pos);
            } else {
                if (!Objects.equals(returnType.type, "void"))
                    throw new semanticError("mismatch of the type in return", it.pos);
            }
        } else {
            if (inLoop == 0) throw new semanticError("loop control happened outside of the loop", it.pos);
        }
    }

    @Override
    public void visit(stmtNode it) {

    }

    @Override
    public void visit(addictiveExprNode it) {

    }

    @Override
    public void visit(andExprNode it) {

    }


    @Override
    public void visit(assignExprNode it) {
    }

    @Override
    public void visit(constExprNode it) {
    }

    @Override
    public void visit(declaratorNode it) {
    }

    @Override
    public void visit(funcParameterNode it) {
    }

    @Override
    public void visit(equalExprNode it) {
    }

    @Override
    public void visit(exclusiveOrExprNode it) {
    }

    @Override
    public void visit(exprNode it) {
    }


    @Override
    public void visit(idExprNode it) {
        if (!currentScope.containsVariable(it.Id, true))
            throw new semanticError("Semantic Error: variable not define", it.pos);
        it.type = currentScope.getType(it.Id, true);
    }

    @Override
    public void visit(inclusiveOrExprNode it) {
    }


    @Override
    public void visit(lambdaExprNode it) {
    }

    @Override
    public void visit(logicAndExprNode it) {
    }

    @Override
    public void visit(logicOrExprNode it) {
    }

    @Override
    public void visit(multiExprNode it) {
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
    public void visit(relationExprNode it) {

    }


    @Override
    public void visit(shiftExprNode it) {

    }


    @Override
    public void visit(unaryExprNode it) {

    }

    @Override
    public void visit(newArrayNode it) {

    }

}
