package Backend;
import AST.*;

import IR.*;
import Util.Scope;
import Util.error.semanticError;
import Util.globalScope;
import Util.Type.*;
import Util.regTypePair;

import java.util.HashMap;
import java.util.Objects;

public class IRBuilder implements ASTVisitor {
    private block currentBlock = null;
    private funcDef currentFunc = null;
    private program pg;
    private classType currentStruct = null;
    private Scope currentScope;
    private globalScope gScope;
    private HashMap<String,classDef> nameToClassDef = new HashMap<>();
    private boolean funcSuite = false;

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
        currentScope = new Scope(currentScope);
        currentFunc = new funcDef(currentFunc);
        currentBlock = currentFunc.rootBlock;
        pg.push_back(currentFunc);
        String idPrefix = ((currentStruct==null)? "": "_"+currentStruct.name);
        currentFunc.funcId = idPrefix+it.id;
        funcType func;
        if (currentStruct != null) {
            func = currentStruct.methods.get(it.id);
            currentFunc.parameters.add(new IRType(currentStruct));
            currentScope.defineVariable("this",currentStruct,it.pos);
            register rd = new register(),rs = new register();
            IRType tmpIrType = new IRType(currentStruct),tmpIrTypePtr = tmpIrType.getPtr();
            currentScope.defineVariable("this",currentStruct,it.pos);
            currentScope.linkRegister("this",rd,tmpIrTypePtr);
            currentFunc.push_back(new alloca(rd,4,tmpIrType));
            currentBlock.push_back(new store(rs,rd,4,tmpIrType));
        } else func = gScope.getFunctionFromName(it.id, it.pos);
        //for return
        if (func.returnType.typeType!= Type.Types.VOID_TYPE) {
            currentFunc.retReg = new register();
            currentFunc.push_back(new alloca(currentFunc.retReg,4,new IRType()));
        }
        if (it.parameters != null) {
            int loopLen = it.parameters.Id.size();
            for (int i = 0; i < loopLen;++i) {
                String tmpId = it.parameters.Id.get(i);
                Type t = func.parameter.get(i);
                register rd = new register(),rs = new register();
                IRType tmpIrType = new IRType(t),tmpIrTypePtr = tmpIrType.getPtr();
                currentFunc.parameters.add(tmpIrType);
                currentFunc.parameterRegs.add(rs);
                currentScope.defineVariable(tmpId,t,it.parameters.pos);
                currentScope.linkRegister(tmpId,rd,tmpIrTypePtr);
                currentFunc.push_back(new alloca(rd,4,tmpIrType));
                currentBlock.push_back(new store(rs,rd,4,tmpIrType));
            }
        }
        currentFunc.returnType = new IRType(func.returnType);
        funcSuite = true;
        it.suite.accept(this);
        if (currentBlock.tailStmt==null) {
            if (func.returnType.typeType== Type.Types.VOID_TYPE) {
                IRType irType = new IRType();
                irType.isVoid = true;
                currentBlock.push_back(new ret(new constant(),irType));
            } else {
                currentBlock.push_back(new ret(new constant(0),new IRType()));
            }
        }
        currentScope = currentScope.parentScope();
        currentFunc = currentFunc.parentFunc();
    }

    @Override
    public void visit(arraySpecifierNode it) {
    }

    @Override
    public void visit(compoundStmtNode it) {
        if (it.stmtArray!=null) {
            boolean flag = false;
            if (!funcSuite) currentScope = new Scope(currentScope);
            else {
                funcSuite = false;
                flag =true;
            }
            for (stmtNode stmtNode : it.stmtArray) {
                stmtNode.accept(this);
            }
            if (!flag) currentScope = currentScope.parentScope();
        }
    }

    @Override
    public void visit(declStmtNode it) {
        if (it.isClassDef) it.struct.accept(this);
        else {
            Type t = new Type(gScope.getTypeFromName(it.arraySpecifier.type, it.arraySpecifier.pos));
            t.dimension = it.arraySpecifier.emptyBracketPair;
            IRType tmpIrType = new IRType(t);
            for (declaratorNode declaratorNode : it.declaratorList) {
                if (currentStruct==null) {
                    register rd = new register();
                    currentFunc.push_back(new alloca(rd,4,tmpIrType));
                    currentScope.defineVariable(declaratorNode.Identifier,t,declaratorNode.pos);
                    currentScope.linkRegister(declaratorNode.Identifier,rd,tmpIrType);
                    if (declaratorNode.expr!=null) {
                        declaratorNode.expr.accept(this);
                        currentBlock.push_back(new store(declaratorNode.expr.rd,rd,4,tmpIrType));
                    }
                } else {
                    //define global variables
                }
            }
        }
    }

    @Override
    public void visit(classNode it) {
        currentStruct = (classType) gScope.getTypeFromName(it.name, it.pos);
        currentScope = new Scope(currentScope);
        currentStruct = null;
        currentScope = currentScope.parentScope();
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
        if (it.constructFunc != null) {
            it.constructFunc.accept(this);
        }
    }

    @Override
    public void visit(exprStmtNode it) {
        it.expr.accept(this);
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
            if (it.expr!=null) {
                it.expr.accept(this);
                entity rd;
                if (currentFunc.retReg!=null) {
                    rd = new register();
                    currentBlock.push_back(new store(it.expr.rd,currentFunc.retReg,4,new IRType(it.expr.type)));
                    currentBlock.push_back(new load((register)rd,currentFunc.retReg,new IRType(it.expr.type),4));
                } else {
                    rd = it.expr.rd;
                }
                ret retStmt = new ret(rd,new IRType(it.expr.type));
                currentBlock.push_back(retStmt);
            } else {
                IRType irType = new IRType();
                irType.isVoid = true;
                ret retStmt = new ret(new constant(),irType);
                currentBlock.push_back(retStmt);
            }
        } else {

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
        exprNode firstExpr = it.exprList.get(0);
        it.type = firstExpr.type;
        it.rd = firstExpr.rd;
        it.idReg = firstExpr.idReg;
    }

    @Override
    public void visit(assignExprNode it) {
        if (it.exprList!=null) {
            for (exprNode exprNode : it.exprList) {
                exprNode.accept(this);
            }
            it.rd = it.exprList.get(0).rd;
            it.logicExpr.accept(this);
            currentBlock.push_back(new store(it.rd, it.logicExpr.idReg,4,new IRType(it.logicExpr.type)));
        } else {
            it.logicExpr.accept(this);
            it.rd = it.logicExpr.rd;
            it.idReg = it.logicExpr.idReg;
        }
    }

    @Override
    public void visit(logicOrExprNode it) {
        for (exprNode exprNode : it.exprList) {
            exprNode.accept(this);
        }
        exprNode firstExpr = it.exprList.get(0);
        it.rd = firstExpr.rd;
        it.idReg = firstExpr.idReg;
        //todo: consider logic operator
    }

    @Override
    public void visit(logicAndExprNode it) {
        for (exprNode exprNode : it.exprList) {
            exprNode.accept(this);
        }
        exprNode firstExpr = it.exprList.get(0);
        it.rd = firstExpr.rd;
        it.idReg = firstExpr.idReg;
        //todo: consider logic operator
    }

    @Override
    public void visit(inclusiveOrExprNode it) {
        for (exprNode exprNode : it.exprList) {
            exprNode.accept(this);
        }
        exprNode firstExpr = it.exprList.get(0);
        it.rd = firstExpr.rd;
        it.idReg = firstExpr.idReg;
        //todo: consider logic operator
    }

    @Override
    public void visit(exclusiveOrExprNode it) {
        for (exprNode exprNode : it.exprList) {
            exprNode.accept(this);
        }
        exprNode firstExpr = it.exprList.get(0);
        it.rd = firstExpr.rd;
        it.idReg = firstExpr.idReg;
        //todo: consider logic operator
    }

    @Override
    public void visit(andExprNode it) {
        for (exprNode exprNode : it.exprList) {
            exprNode.accept(this);
        }
        exprNode firstExpr = it.exprList.get(0);
        it.rd = firstExpr.rd;
        it.idReg = firstExpr.idReg;
        //todo: consider logic operator
    }

    @Override
    public void visit(equalExprNode it) {
        for (exprNode exprNode : it.exprList) {
            exprNode.accept(this);
        }
        exprNode firstExpr = it.exprList.get(0);
        it.rd = firstExpr.rd;
        it.idReg = firstExpr.idReg;
        //todo: consider logic operator
    }

    @Override
    public void visit(relationExprNode it) {
        for (exprNode exprNode : it.exprList) {
            exprNode.accept(this);
        }
        exprNode firstExpr = it.exprList.get(0);
        it.rd = firstExpr.rd;
        it.idReg = firstExpr.idReg;
        //todo: consider logic operator
    }

    @Override
    public void visit(shiftExprNode it) {
        exprNode firstExpr = it.exprList.get(0);
        firstExpr.accept(this);
        int listLen = it.exprList.size();
        entity lastRes = firstExpr.rd;
        for (int i=1;i<listLen;++i) {
            exprNode second = it.exprList.get(i);
            second.accept(this);
            binary.opTye op = (Objects.equals(it.OpList.get(i - 1), ">>"))? binary.opTye.ASHR: binary.opTye.SHL;
            register rd = new register();
            currentBlock.push_back(new binary(op,new IRType(),rd,lastRes,second.rd));
            lastRes = rd;
        }
        it.rd = lastRes;
        it.idReg = firstExpr.idReg;
    }

    @Override
    public void visit(addictiveExprNode it) {
        exprNode firstExpr = it.exprList.get(0);
        firstExpr.accept(this);
        int listLen = it.exprList.size();
        entity lastRes = firstExpr.rd;
        for (int i=1;i<listLen;++i) {
            exprNode second = it.exprList.get(i);
            second.accept(this);
            binary.opTye op = (Objects.equals(it.OpList.get(i - 1), "+"))? binary.opTye.ADD: binary.opTye.SUB;
            register rd = new register();
            currentBlock.push_back(new binary(op,new IRType(),rd,lastRes,second.rd));
            lastRes = rd;
        }
        it.rd = lastRes;
        it.idReg = firstExpr.idReg;
    }

    @Override
    public void visit(multiExprNode it) {
        exprNode firstExpr = it.exprList.get(0);
        firstExpr.accept(this);
        int listLen = it.exprList.size();
        entity lastRes = firstExpr.rd;
        for (int i=1;i<listLen;++i) {
            exprNode second = it.exprList.get(i);
            second.accept(this);
            binary.opTye op = (Objects.equals(it.OpList.get(i - 1), "*"))? binary.opTye.MUL:
                              (Objects.equals(it.OpList.get(i - 1), "%"))? binary.opTye.MOD: binary.opTye.SDIV;
            register rd = new register();
            currentBlock.push_back(new binary(op,new IRType(),rd,lastRes,second.rd));
            lastRes = rd;
        }
        it.rd = lastRes;
        it.idReg = firstExpr.idReg;
    }

    @Override
    public void visit(unaryExprNode it) {
        if (it.postfixExpr != null) {
            it.postfixExpr.accept(this);
            it.idReg = it.postfixExpr.idReg;
            it.rd = it.postfixExpr.rd;
        } else if (it.newExpr != null) {
        } else {
            //unary logic operator is undefined, so it is not considered here.
            it.unaryExpr.accept(this);
            it.idReg = it.unaryExpr.idReg;
            if (Objects.equals(it.op,"++")||Objects.equals(it.op,"--")) {
                binary.opTye op = Objects.equals(it.op,"++")? binary.opTye.ADD: binary.opTye.SUB;
                register rd = new register();
                currentBlock.push_back(new binary(op,new IRType(),rd,it.unaryExpr.rd,new constant(1)));
                currentBlock.push_back(new store(rd,it.idReg,4,new IRType()));
                it.rd = rd;
            } else if (Objects.equals(it.op,"!") || Objects.equals(it.op,"not")) {

            } else if (Objects.equals(it.op,"*")){

            } else {

            }
        }
    }

    @Override
    public void visit(newExprNode it) {
    }

    @Override
    public void visit(postfixExprNode it) {
        if (it.isSelfOp) {
            it.postfixExpr.accept(this);
            it.idReg = it.postfixExpr.idReg;
            it.rd = it.postfixExpr.rd;
            register rd = new register();
            binary.opTye op = it.isSelfPlus? binary.opTye.ADD: binary.opTye.SUB;
            currentBlock.push_back(new binary(op,new IRType(),rd,it.rd,new constant(1)));
            currentBlock.push_back(new store(rd,it.idReg,4,new IRType()));
        } else if (it.isDotOp) {
        } else if (it.isCallOp) {
        } else if (it.isLocateOp) {
        } else {
            it.primaryExpr.accept(this);
            it.rd = it.primaryExpr.rd;
            it.idReg = it.primaryExpr.idReg;
        }
    }

    @Override
    public void visit(primaryExprNode it) {
        if (it.isLiteral) {
            it.expr.accept(this);
            it.rd = it.expr.rd;
        } else if (it.isExpr) {
            it.expr.accept(this);
        } else if (it.isThis) {
            regTypePair regType = currentScope.getEntity("this",true);
            it.idReg = regType.reg;
            it.irType = regType.irType;
        } else if (it.isIdExpr) {
            it.expr.accept(this);
            it.idReg = it.expr.idReg;
            it.rd = it.expr.rd;
        } else {
            //lambda
        }
    }

    @Override
    public void visit(constExprNode it) {
        if (it.isInt) {
            it.rd = new constant(Integer.parseInt(it.literal));
        } else if (it.isBool) {
            it.rd = new constant(Objects.equals(it.literal,"true"));
        } else if (it.isString) {
            //todo add global constant string
        } else if (it.isNull) {
            it.rd = new constant(0);
        }
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
        //todo func call and class methods
        regTypePair regType = currentScope.getEntity(it.Id,true);
        it.idReg = regType.reg;
        it.irType = regType.irType;
        it.rd = new register();
        currentBlock.push_back(new load((register) it.rd,it.idReg,it.irType,4));
    }

    @Override
    public void visit(declaratorNode it) {

    }
}
