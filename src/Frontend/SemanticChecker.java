package Frontend;

import AST.*;
import Util.Scope;
import Util.Type.*;
import Util.error.semanticError;
import Util.globalScope;
import Util.position;

import java.util.ArrayList;
import java.util.ConcurrentModificationException;
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
        if (currentStruct != null) {
            assert (currentStruct.methods != null);
            currentStruct.methods.put(it.id, func);
        }
        if (it.parameters != null) {
            for (String id : it.parameters.Id) {
                gScope.nameConflict(id, it.parameters.pos);
                currentScope.defineVariable(id, func.parameter.get(cnt), it.parameters.pos);
                if (currentStruct != null) {
                    if (currentStruct.members.containsKey(id))
                        throw new semanticError("redefinition of member " + id, it.parameters.pos);
                    currentStruct.members.put(id, func.parameter.get(cnt));
                }
                ++cnt;
            }
        }
        if (returnType != null) throw new semanticError("define function in a function", it.pos);
        returnType = func.returnType;
        it.suite.accept(this);
        returnType = null;
        currentScope = currentScope.parentScope();
    }

    @Override
    public void visit(arraySpecifierNode it) {
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
            Type t = new Type(gScope.getTypeFromName(it.arraySpecifier.type, it.arraySpecifier.pos));
            t.dimension = it.arraySpecifier.emptyBracketPair;
            it.declaratorList.forEach(declarator -> {
                if (declarator.expr != null) {
                    declarator.expr.accept(this);
                    if (!Objects.equals(declarator.expr.type.name, t.name) && declarator.expr.type.dimension != t.dimension)
                        throw new semanticError("initialize expression's type mismatches the type of the variable", declarator.expr.pos);
                }
                // add to class as member
                if (currentStruct != null) {
                    assert (currentStruct.members != null);
                    if (currentStruct.members.containsKey(declarator.Identifier))
                        throw new semanticError("redefinition of member " + declarator.Identifier, declarator.pos);
                    currentStruct.members.put(declarator.Identifier, t);
                }
                // add to scope
                currentScope.defineVariable(declarator.Identifier, t, declarator.pos);
            });
        }
    }

    @Override
    public void visit(classNode it) {
        currentStruct = (classType) gScope.getTypeFromName(it.name, it.pos);
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
            if (it.cond.type.typeType != Type.Types.BOOL_TYPE)
                throw new semanticError("the condition's result is not boolean", it.cond.pos);
        } else {
            if (it.cond != null) {
                it.cond.accept(this);
                if (it.cond.type.typeType != Type.Types.BOOL_TYPE)
                    throw new semanticError("the condition's result is not boolean", it.cond.pos);
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
    public void visit(exprNode it) {
        for (exprNode expr : it.exprList) {
            expr.accept(this);
        }
    }

    @Override
    public void visit(assignExprNode it) {
        it.logicExpr.accept(this);
        if (it.exprList!=null) {
            if (!it.type.assignable)
                throw new semanticError("assignment on rvalue",it.logicExpr.pos);
            if (it.exprList.size()>1) {
                for (int i=0;i<it.exprList.size()-1;++i) {
                    exprNode expr = it.exprList.get(i);
                    expr.accept(this);
                    if (!expr.type.assignable)
                        throw new semanticError("assignment on rvalue",expr.pos);
                    if (expr.type.name!=it.logicExpr.type.name)
                        throw new semanticError("type mismatch on assignment",expr.pos);
                }
            }
            exprNode expr = it.exprList.get(it.exprList.size()-1);
            expr.accept(this);
            if (expr.type.name!=it.logicExpr.type.name)
                throw new semanticError("type mismatch on assignment",expr.pos);
        } else {
            it.type = it.logicExpr.type;
        }
    }


    @Override
    public void visit(logicOrExprNode it) {
        boolean before = false;
        for (exprNode expr : it.exprList) {
            expr.accept(this);
            if (before && (!Objects.equals(expr.type.name, "bool") || expr.type.dimension > 0))
                throw new semanticError("mismatch of the type in logic or expression", it.pos);
            before = true;
        }
        it.type = it.exprList.get(0).type;
        if (it.exprList.size() > 1) {
            if (it.type.dimension > 0)
                throw new semanticError("mismatch of the type in logic or expression", it.pos);
            it.type.assignable = false;
        }
    }

    @Override
    public void visit(logicAndExprNode it) {
        boolean before = false;
        for (exprNode expr : it.exprList) {
            expr.accept(this);
            if (before && (!Objects.equals(expr.type.name, "bool") || expr.type.dimension > 0))
                throw new semanticError("mismatch of the type in logic and expression", it.pos);
            before = true;
        }
        it.type = it.exprList.get(0).type;
        if (it.exprList.size() > 1) {
            if (it.type.dimension > 0)
                throw new semanticError("mismatch of the type in logic and expression", it.pos);
            it.type.assignable = false;
        }
    }

    @Override
    public void visit(inclusiveOrExprNode it) {
        exprNode before = null;
        for (exprNode expr : it.exprList) {
            expr.accept(this);
            if (before != null && (!Objects.equals(before.type.name, expr.type.name) || expr.type.dimension > 0))
                throw new semanticError("mismatch of the type in inclusive or expression", it.pos);
            before = expr;
        }
        it.type = it.exprList.get(0).type;
        if (it.exprList.size() > 1) {
            if (it.type.dimension > 0) throw new semanticError("can not operate on array", it.pos);
            if (!Objects.equals(it.type.name, "int")&&!Objects.equals(it.type.name, "bool")) {
                throw new semanticError("inclusive or expression on non-int value", it.pos);
            }
            it.type.assignable = false;
        }
    }

    @Override
    public void visit(exclusiveOrExprNode it) {
        exprNode before = null;
        for (exprNode expr : it.exprList) {
            expr.accept(this);
            if (before != null && (!Objects.equals(before.type.name, expr.type.name) || expr.type.dimension > 0))
                throw new semanticError("mismatch of the type in exclusive or expression", it.pos);
            before = expr;
        }
        it.type = it.exprList.get(0).type;
        if (it.exprList.size() > 1) {
            if (it.type.dimension > 0) throw new semanticError("can not operate on array", it.pos);
            if (!Objects.equals(it.type.name, "int")&&!Objects.equals(it.type.name, "bool")) {
                throw new semanticError("exclusive or expression on non-int value", it.pos);
            }
            it.type.assignable = false;
        }
    }

    @Override
    public void visit(andExprNode it) {
        exprNode before = null;
        for (exprNode expr : it.exprList) {
            expr.accept(this);
            if (before != null && (!Objects.equals(before.type.name, expr.type.name) || expr.type.dimension > 0))
                throw new semanticError("mismatch of the type in and expression", it.pos);
            before = expr;
        }
        it.type = it.exprList.get(0).type;
        if (it.exprList.size() > 1) {
            if (it.type.dimension > 0) throw new semanticError("can not operate on array", it.pos);
            if (!Objects.equals(it.type.name, "int")&&!Objects.equals(it.type.name, "bool")) {
                throw new semanticError("and expression on non-int value", it.pos);
            }
            it.type.assignable = false;
        }
    }

    @Override
    public void visit(equalExprNode it) {
        if (it.exprList.size()>1) {
            exprNode lhs=it.exprList.get(0);
            exprNode rhs=it.exprList.get(1);
            lhs.accept(this);
            rhs.accept(this);
            if (lhs.type.name=="int" || lhs.type.name=="bool" || (lhs.type.typeType!= Type.Types.NULL && rhs.type.typeType!= Type.Types.NULL))
                if (lhs.type.name!=rhs.type.name)
                    throw new semanticError("type mismatch on equal expression",lhs.pos);
            for (int i=2;i<it.exprList.size();++i) {
                exprNode tmp = it.exprList.get(i);
                tmp.accept(this);
                if (!Objects.equals(tmp.type.name, "bool"))
                    throw new semanticError("type mismatch on equal expression",tmp.pos);
            }
            it.type = new Type(Type.Types.BOOL_TYPE);
        } else {
            it.exprList.get(0).accept(this);
            it.type = it.exprList.get(0).type;
        }
    }

    @Override
    public void visit(relationExprNode it) {
        if (it.exprList.size()>2)
            throw new semanticError("can not compare two boolean value", it.pos);
        else if (it.exprList.size()==2) {
            exprNode lhs=it.exprList.get(0);
            exprNode rhs=it.exprList.get(1);
            lhs.accept(this);
            rhs.accept(this);
            if (Objects.equals(lhs.type.name, "bool") || Objects.equals(rhs.type.name, "bool"))
                throw new semanticError("can not compare two boolean value", it.pos);
            it.type = new Type(Type.Types.BOOL_TYPE);
        } else {
            it.exprList.get(0).accept(this);
            it.type = it.exprList.get(0).type;
        }
    }

    @Override
    public void visit(shiftExprNode it) {
        exprNode before = null;
        for (exprNode expr : it.exprList) {
            expr.accept(this);
            if (before != null && (!Objects.equals(before.type.name, expr.type.name) || expr.type.dimension > 0))
                throw new semanticError("mismatch of the type in shift expression", it.pos);
            before = expr;
        }
        it.type = it.exprList.get(0).type;
        if (it.exprList.size() > 1 && (!Objects.equals(it.type.name, "int") || it.type.dimension > 0))
            throw new semanticError("mismatch of the type in shift expression", it.pos);
        if (it.exprList.size() > 1) it.type.assignable = false;
    }

    @Override
    public void visit(addictiveExprNode it) {
        exprNode before = null;
        for (exprNode expr : it.exprList) {
            expr.accept(this);
            if (before != null && (!Objects.equals(before.type.name, expr.type.name) || expr.type.dimension > 0))
                throw new semanticError("mismatch of the type in addition/subtraction expression", it.pos);
            before = expr;
        }
        it.type = it.exprList.get(0).type;
        if (it.exprList.size() > 1) {
            if (it.type.dimension > 0) throw new semanticError("can not operate on array", it.pos);
            if (Objects.equals(it.type.name, "string")) {
                for (String op : it.OpList) {
                    if (!Objects.equals(op, "+")) throw new semanticError("can not operate on string", it.pos);
                }
            } else if (!Objects.equals(it.type.name, "int")) {
                throw new semanticError("addition/subtraction expression on non-int value", it.pos);
            }
            it.type.assignable = false;
        }
    }

    @Override
    public void visit(multiExprNode it) {
        boolean before = false;
        for (exprNode expr : it.exprList) {
            expr.accept(this);
            if (before && (!Objects.equals(expr.type.name, "int") || expr.type.dimension > 0))
                throw new semanticError("mismatch of the type in multiple/division expression", it.pos);
            before = true;
        }
        it.type = it.exprList.get(0).type;
        if (it.exprList.size() > 1) {
            if (it.type.dimension > 0)
                throw new semanticError("mismatch of the type in multiple/division expression", it.pos);
            it.type.assignable = false;
        }
    }

    @Override
    public void visit(unaryExprNode it) {
        if (it.postfixExpr != null) {
            it.postfixExpr.accept(this);
            it.type = it.postfixExpr.type;
        } else if (it.newExpr != null) {
            it.newExpr.accept(this);
            it.type = it.newExpr.type;
        } else {
            //unary logic operator is undefined, so it is not considered here.
            it.unaryExpr.accept(this);
            if (Objects.equals(it.op, "!") && !Objects.equals(it.unaryExpr.type.name, "bool"))
                throw new semanticError("unary operator(!) on non-bool variable", it.pos);
            else if (!Objects.equals(it.unaryExpr.type.name, "int"))
                throw new semanticError("unary operator(++/--/-) on non-int variable", it.pos);
            it.type = it.unaryExpr.type;
        }
    }

    @Override
    public void visit(newExprNode it) {
        if (it.newArray != null) {
            it.type = new Type(gScope.getTypeFromName(it.typename, it.pos));
            it.type.assignable = false;
            it.type.dimension = it.newArray.BracketPair;
            for (exprNode expr : it.newArray.exprList) {
                expr.accept(this);
                if (!Objects.equals(expr.type.name, "int"))
                    throw new semanticError("subscript is not int", expr.pos);
            }
        } else {
            it.type = new Type(gScope.getTypeFromName(it.typename, it.pos));
            it.type.assignable = false;
        }
    }

    @Override
    public void visit(postfixExprNode it) {
        if (it.isSelfOp) {
            it.postfixExpr.accept(this);
            if (!Objects.equals(it.postfixExpr.type.name, "int"))
                throw new semanticError("self operator on non-int value", it.pos);
            it.type = it.postfixExpr.type;
            it.type.assignable = false;
        } else if (it.isDotOp) {
            it.postfixExpr.accept(this);
            idExprNode id = (idExprNode) it.Expr;
            Type t = it.postfixExpr.type;
            if (t.isClass) {
                it.type = new Type(gScope.getMemberTypeFromName(t.name, id.Id, id.pos));
                if (!it.type.isFunc) it.type.assignable = true;
            } else if (t.dimension > 0) {
                if (!Objects.equals(id.Id, "size"))
                    throw new semanticError("array do not have this method", it.pos);
                it.type = new Type(Type.Types.INT_TYPE);
            } else throw new semanticError("do not have member/method", it.pos);
        } else if (it.isCallOp) {
            it.postfixExpr.accept(this);
            funcType func = (funcType) it.postfixExpr.type;
            if (!it.type.isFunc)
                throw new semanticError("call fail because it is not a function", it.pos);
            if (it.Expr != null) {
                it.Expr.accept(this);
                int cnt = 0;
                if (it.Expr.exprList.size() != func.parameter.size())
                    throw new semanticError(" number of parameters mismatch", it.Expr.pos);
                for (exprNode expr : it.Expr.exprList) {
                    if (!Objects.equals(expr.type.name, func.parameter.get(cnt).name))
                        throw new semanticError("parameter mismatch", expr.pos);
                }
            } else {
                if (func.parameter != null)
                    throw new semanticError("parameter mismatch", it.pos);
            }
            it.type = new Type(func.returnType);
            it.type.assignable = false;
        } else if (it.isLocateOp) {
            it.postfixExpr.accept(this);
            it.type = it.postfixExpr.type;
            if (it.type.dimension-- == 0)
                throw new semanticError("subscript on non-array variable", it.Expr.pos);
            it.Expr.accept(this);
            if (!Objects.equals(it.Expr.type.name, "int"))
                throw new semanticError("subscript is not int", it.Expr.pos);
        } else {
            it.primaryExpr.accept(this);
            it.type = it.primaryExpr.type;
        }
    }

    @Override
    public void visit(primaryExprNode it) {
        if (it.isLiteral) {
            it.expr.accept(this);
            it.type = it.expr.type;
        } else if (it.isExpr) {
            it.expr.accept(this);
            it.type = it.expr.type;
        } else if (it.isThis) {
            if (currentStruct == null)
                throw new semanticError("use this outside of the class", it.pos);
            it.type = new Type(currentStruct);
            it.type.assignable = true;
        } else if (it.isIdExpr) {
            String s = ((idExprNode) it.expr).Id;
            if (currentScope.containsVariable(s, true)) {
                it.type = currentStruct.members.get(s);
            } else if (gScope.hasFunction(s)) {
                it.type = gScope.getFunctionFromName(s, it.expr.pos);
            } else throw new semanticError("can not find the definition of " + s, it.expr.pos);
        } else {
            //todo lambda expression
            it.expr.accept(this);
        }
    }

    @Override
    public void visit(constExprNode it) {
        Type.Types ts = Type.Types.NULL;
        if (it.isBool) ts = Type.Types.BOOL_TYPE;
        else if (it.isInt) ts = Type.Types.CONST_NULL;
        else if (it.isString) ts = Type.Types.CLASS_TYPE;
        else if (it.isNull) ts = Type.Types.INT_TYPE;
        it.type = new Type(ts);
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
        if (!currentScope.containsVariable(it.Id, true))
            throw new semanticError("Semantic Error: variable not define", it.pos);
        it.type = currentScope.getType(it.Id, true);
    }

    @Override
    public void visit(declaratorNode it) {

    }
}
