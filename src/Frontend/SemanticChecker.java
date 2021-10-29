package Frontend;

import AST.*;
import Util.Scope;
import Util.Type.*;
import Util.error.semanticError;
import Util.globalScope;
import Util.position;

import java.util.Objects;

public class SemanticChecker implements ASTVisitor {
    private Scope currentScope;
    private globalScope gScope;
    private classType currentStruct = null;
    private Boolean hasMain = false;
    private position posMain = null;
    //if returnType is not null, then the visitor is in a function
    private Type returnType = null;
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
        int cnt = 0;
        funcType func = gScope.getFunctionFromName(it.id, it.pos);
        if (currentStruct!=null) {
            assert (currentStruct.methods != null);
            currentStruct.methods.put(it.id,func);
        }
        if (it.parameters != null) {
            for (String id : it.parameters.Id) {
                gScope.nameConflict(id,it.parameters.pos);
                currentScope.defineVariable(id, func.parameter.get(cnt), it.parameters.pos);
                if (currentStruct!=null) {
                    if (currentStruct.members.containsKey(id))
                        throw new semanticError("redefinition of member " + id, it.parameters.pos);
                    currentStruct.members.put(id,func.parameter.get(cnt));
                }
                ++cnt;
            }
        }
        if (returnType!=null) throw new semanticError("define function in a function", it.pos);
        returnType = func.returnType;
        it.suite.accept(this);
        returnType = null;
        currentScope = currentScope.parentScope();
    }

    @Override
    public void visit(arraySpecifierNode it) {}

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
            Type t = new Type(gScope.getTypeFromName(it.arraySpecifier.type,it.arraySpecifier.pos));
            t.dimension = it.arraySpecifier.emptyBracketPair;
            it.declaratorList.forEach(declarator -> {
                if (declarator.expr!=null) {
                    declarator.expr.accept(this);
                    if (!Objects.equals(declarator.expr.type.name, t.name) && declarator.expr.type.dimension != t.dimension)
                        throw new semanticError("initialize expression's type mismatches the type of the variable",declarator.expr.pos);
                }
                // add to class as member
                if (currentStruct!=null) {
                    assert (currentStruct.members != null);
                    if (currentStruct.members.containsKey(declarator.Identifier))
                        throw new semanticError("redefinition of member " + declarator.Identifier, declarator.pos);
                    currentStruct.members.put(declarator.Identifier,t);
                }
                // add to scope
                currentScope.defineVariable(declarator.Identifier,t,declarator.pos);
            });
        }
    }

    @Override
    public void visit(classNode it) {
        currentStruct = (classType)gScope.getTypeFromName(it.name, it.pos);
        it.declList.forEach(decl -> {
            if (decl.isDeclStmt) {
                decl.accept(this);
            }
        });
        it.declList.forEach(decl -> {
            if (decl.isFuncDef) {
                decl.accept(this);
            }
        });
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
        if (it.cond.type.typeType != Type.Types.BOOL_TYPE)
            throw new semanticError("the condition's result is not boolean", it.cond.pos);
        if (it.trueStmt != null) it.trueStmt.accept(this);
        if (it.falseStmt != null) it.falseStmt.accept(this);
    }

    @Override
    public void visit(iterStmtNode it) {
        currentScope = new Scope(currentScope);
        if (it.isWhile) {
            if (it.cond == null) throw new semanticError("empty condition", it.pos);
            it.cond.accept(this);
            if (it.cond.type.typeType != Type.Types.BOOL_TYPE) throw new semanticError("the condition's result is not boolean", it.cond.pos);
        } else {
            if (it.cond != null) {
                it.cond.accept(this);
                if (it.cond.type.typeType != Type.Types.BOOL_TYPE) throw new semanticError("the condition's result is not boolean", it.cond.pos);
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
                if (Objects.equals(returnType.name, "void"))
                    throw new semanticError("return value in void function", it.pos);
                if (Objects.equals(returnType.name, "null"))
                    throw new semanticError("return value in construct function", it.pos);
                it.expr.accept(this);
                if (!Objects.equals(it.expr.type.name, returnType.name))
                    throw new semanticError("mismatch of the type in return", it.pos);
            } else {
                if (!Objects.equals(returnType.name, "void"))
                    throw new semanticError("empty return in non-void return type function", it.pos);
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
