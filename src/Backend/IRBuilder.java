package Backend;

import AST.*;

import IR.*;
import Util.Scope;
import Util.error.semanticError;
import Util.globalScope;
import Util.Type.*;
import Util.regTypePair;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

public class IRBuilder implements ASTVisitor {
    private block currentBlock = null, loopExitBlock = null, loopContinueBlock = null;
    private funcDef currentFunc = null, globalInitializer = new funcDef(), builtInStringAppend, builtInStringGetStrcmp, mainFunc;
    private program pg;
    private classType currentStruct = null;
    private Scope currentScope;
    private globalScope gScope;
    private boolean funcSuite = false;
    private funcType lastCallFunc = null;
    private String lastCallId = null;
    private classDef currentClassDef = null, stringDef;
    private HashMap<String, classDef> idToDef;
    private HashMap<String, funcDef> idToFuncDef;
    private int initFuncCounter = 0;
    private IRType voidIrType = new IRType(), i8 = new IRType(8), i64 = new IRType(32), i32 = new IRType(32), i8Star = new IRType(8, 1, 0, null), i1 = new IRType(1), stringStar = new IRType(0, 1, 0, null), i32Star = i32.getPtr();
    private constant constZero = new constant(0), constVoid = new constant(), constUnit = new constant(1);
    private register lastFuncCaller = null;
    private IRType lastFuncCallerIRType = null;

    public IRBuilder(program pg, globalScope gScope, HashMap<String, classDef> idToDef, HashMap<String, funcDef> idToFuncDef) {
        this.pg = pg;
        this.idToDef = idToDef;
        this.idToFuncDef = idToFuncDef;
        currentScope = this.gScope = gScope;
        globalInitializer.returnType = voidIrType;
        globalInitializer.rootBlock = new block();
        globalInitializer.funcId = "_GLOBAL_";
        voidIrType.isVoid = true;
        set_declares();
    }

    void set_declares() {
        //string's built-in methods
        stringStar.isString = true;
        stringDef = gScope.getClassDef("string");
        stringStar.cDef = stringDef;
        pg.push_back(stringDef);
        declare declareStringLength = new declare(i32, "_string_length");
        declareStringLength.parameters.add(stringStar);
        pg.push_back(declareStringLength);
        funcDef stringLength = new funcDef("_string_length", i32, declareStringLength.parameters);
        idToFuncDef.put("_string_length", stringLength);

        declare declareStringSubString = new declare(stringStar, "_string_substring");
        declareStringSubString.parameters.add(stringStar);
        declareStringSubString.parameters.add(i32);
        declareStringSubString.parameters.add(i32);
        pg.push_back(declareStringSubString);
        funcDef stringSubString = new funcDef("_string_substring", stringStar, declareStringSubString.parameters);
        idToFuncDef.put("_string_substring", stringSubString);

        declare declareStringParseInt = new declare(i32, "_string_parseInt");
        declareStringParseInt.parameters.add(stringStar);
        pg.push_back(declareStringParseInt);
        funcDef stringParseInt = new funcDef("_string_parseInt", i32, declareStringParseInt.parameters);
        idToFuncDef.put("_string_parseInt", stringParseInt);

        declare declareStringOrd = new declare(i32, "_string_ord");
        declareStringOrd.parameters.add(stringStar);
        declareStringOrd.parameters.add(i32);
        pg.push_back(declareStringOrd);
        funcDef stringOrd = new funcDef("_string_ord", i32, declareStringOrd.parameters);
        idToFuncDef.put("_string_ord", stringOrd);

        declare declareStringAppend = new declare(stringStar, "_string_stringAppend");
        declareStringAppend.parameters.add(stringStar);
        declareStringAppend.parameters.add(stringStar);
        pg.push_back(declareStringAppend);
        builtInStringAppend = new funcDef("_string_stringAppend", stringStar, declareStringAppend.parameters);

        declare declareStringGetStrcmp = new declare(i32, "_string_getStrcmp");
        declareStringGetStrcmp.parameters.add(stringStar);
        declareStringGetStrcmp.parameters.add(stringStar);
        pg.push_back(declareStringGetStrcmp);
        builtInStringGetStrcmp = new funcDef("_string_getStrcmp", i32, declareStringGetStrcmp.parameters);

        //global built-in functions
        declare declareToString = new declare(stringStar, "toString");
        declareToString.parameters.add(i32);
        funcDef pseudoToString = new funcDef("toString", stringStar, declareToString.parameters);
        idToFuncDef.put("toString", pseudoToString);
        pg.push_back(declareToString);

        declare declarePrint = new declare(voidIrType, "print");
        declarePrint.parameters.add(new IRType(8, 1, 0, null));
        funcDef pseudoPrint = new funcDef("print", voidIrType, declarePrint.parameters);
        idToFuncDef.put("print", pseudoPrint);
        pg.push_back(declarePrint);

        declare declarePrintln = new declare(voidIrType, "println");
        declarePrintln.parameters.add(new IRType(8, 1, 0, null));
        funcDef pseudoPrintln = new funcDef("println", voidIrType, declarePrintln.parameters);
        idToFuncDef.put("println", pseudoPrintln);
        pg.push_back(declarePrintln);

        declare declarePrintInt = new declare(voidIrType, "printInt");
        declarePrintInt.parameters.add(i32);
        funcDef pseudoPrintInt = new funcDef("printInt", voidIrType, declarePrintInt.parameters);
        idToFuncDef.put("printInt", pseudoPrintInt);
        pg.push_back(declarePrintInt);

        declare declarePrintlnInt = new declare(voidIrType, "printlnInt");
        declarePrintlnInt.parameters.add(i32);
        funcDef pseudoPrintlnInt = new funcDef("printlnInt", voidIrType, declarePrintlnInt.parameters);
        idToFuncDef.put("printlnInt", pseudoPrintlnInt);
        pg.push_back(declarePrintlnInt);

        declare declareGetInt = new declare(i32, "getInt");
        funcDef pseudoGetInt = new funcDef("getInt", i32, declareGetInt.parameters);
        idToFuncDef.put("getInt", pseudoGetInt);
        pg.push_back(declareGetInt);

        declare declareGetString = new declare(stringStar, "getString");
        funcDef pseudoGetString = new funcDef("getString", declareGetString.retType, declareGetString.parameters);
        idToFuncDef.put("getString", pseudoGetString);
        pg.push_back(declareGetString);

        declare declareMyNew = new declare(new IRType(8, 1, 0, null), "myNew");
        declareMyNew.parameters.add(i64);
        funcDef pseudoMyNew = new funcDef("myNew", declareMyNew.retType, declareMyNew.parameters);
        idToFuncDef.put("myNew", pseudoMyNew);
        pg.push_back(declareMyNew);
    }

    @Override
    public void visit(RootNode it) {
        it.declList.forEach(dc -> dc.accept(this));
        if (initFuncCounter > 0) {
            mainFunc.rootBlock.push_front(new call(null, voidIrType, "_GLOBAL_"));
            globalInitializer.rootBlock.push_back(new ret(null, voidIrType));
            pg.push_back(globalInitializer);
        }
    }

    @Override
    public void visit(declNode it) {
        if (it.isFuncDef) it.funcDef.accept(this);
        else it.declStmt.accept(this);
    }

    @Override
    public void visit(funcDefNode it) {
        currentScope = new Scope(currentScope);
        String idPrefix = ((currentStruct == null) ? "" : "_" + currentStruct.name + "_");
        currentFunc = idToFuncDef.get(idPrefix + it.id);
        //System.out.println(currentFunc.funcId);
        if (Objects.equals(currentFunc.funcId, "main")) mainFunc = currentFunc;
        currentFunc.rootBlock = new block();
        currentFunc.returnBlock = new block();
        currentFunc.returnBlock.jumpTo = true;
        currentBlock = currentFunc.rootBlock;
        pg.push_back(currentFunc);
        /*String idPrefix = ((currentStruct==null)? "": "_"+currentStruct.name+"_");
        currentFunc.funcId = idPrefix+it.id;
        idToFuncDef.put(currentFunc.funcId,currentFunc);*/
        funcType func;
        if (currentStruct != null) {
            func = currentStruct.methods.get(it.id);
            IRType tmpIrType = new IRType(idToDef.get(currentStruct.name), 1, 0);
            register rd = new register(), rs = new register();
            currentFunc.parameterRegs.add(rs);
            currentScope.defineVariable("this", currentStruct, it.pos);
            currentScope.linkRegister("this", rd, tmpIrType.getPtr());
            currentFunc.push_back(new alloca(rd, tmpIrType));
            currentBlock.push_back(new store(rs, rd, tmpIrType));
        } else func = gScope.getFunctionFromName(it.id, it.pos);
        //for return
        if (func.returnType.typeType != Type.Types.VOID_TYPE && func.returnType.typeType != Type.Types.NULL) {
            currentFunc.retReg = new register();
            entity en;
            if (currentFunc.returnType.ptrNum > 0) en = constVoid;
            else en = constZero;
            currentBlock.push_back(new store(en, currentFunc.retReg, currentFunc.returnType));
            currentFunc.push_back(new alloca(currentFunc.retReg, currentFunc.returnType));
        }
        if (it.parameters != null) {
            int loopLen = it.parameters.Id.size();
            for (int i = 0; i < loopLen; ++i) {
                String tmpId = it.parameters.Id.get(i);
                Type t = func.parameter.get(i);
                register rd = new register(), rs = new register();
                IRType tmpIrType;
                if (t.isClass) {
                    tmpIrType = new IRType(idToDef.get(t.name), t.dimension + 1, 0);
                    if (Objects.equals(t.name, "string") && t.dimension==0) tmpIrType.isString = true;
                } else tmpIrType = new IRType(t);
                currentFunc.parameterRegs.add(rs);
                currentScope.defineVariable(tmpId, t, it.parameters.pos);
                currentScope.linkRegister(tmpId, rd, tmpIrType.getPtr());
                currentFunc.push_back(new alloca(rd, tmpIrType));
                currentBlock.push_back(new store(rs, rd, tmpIrType));
            }
        }
        funcSuite = true;
        it.suite.accept(this);
        if (currentBlock.tailStmt == null) {
            if (!(func.returnType.typeType == Type.Types.VOID_TYPE || func.returnType.typeType == Type.Types.NULL)) {
                entity en;
                if (currentFunc.returnType.ptrNum > 0) en = constVoid;
                else en = constZero;
                currentBlock.push_back(new store(en, currentFunc.retReg, currentFunc.returnType));
            }
            currentBlock.push_back(new br(null, currentFunc.returnBlock, null));
        }
        currentBlock.successors.add(currentFunc.returnBlock);
        currentBlock = currentFunc.returnBlock;
        entity rd = null;
        if (currentFunc.retReg != null) {
            rd = new register();
            currentBlock.push_back(new load((register) rd, currentFunc.retReg, currentFunc.returnType.getPtr()));
        }
        ret retStmt = new ret(rd, currentFunc.returnType);
        currentBlock.push_back(retStmt);
        currentScope = currentScope.parentScope();
        currentFunc = null;
    }

    @Override
    public void visit(arraySpecifierNode it) {
    }

    @Override
    public void visit(compoundStmtNode it) {
        if (it.stmtArray != null) {
            boolean flag = false;
            if (!funcSuite) currentScope = new Scope(currentScope);
            else {
                funcSuite = false;
                flag = true;
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
            //System.out.println("&U&" + it.arraySpecifier.type);
            IRType tmpIrType;
            if (t.isClass) {
                tmpIrType = new IRType(idToDef.get(t.name), t.dimension + 1, 0);
                if (Objects.equals(t.name, "string") && t.dimension==0) tmpIrType.isString = true;
            } else tmpIrType = new IRType(t);
            for (declaratorNode declaratorNode : it.declaratorList) {
                if (currentStruct == null || currentFunc != null) {
                    register rd = new register();
                    if (currentFunc != null) {
                        currentScope.linkRegister(declaratorNode.Identifier, rd, tmpIrType.getPtr());
                        currentScope.defineVariable(declaratorNode.Identifier, t, declaratorNode.pos);
                        currentFunc.push_back(new alloca(rd, tmpIrType));
                        if (declaratorNode.expr != null) {
                            declaratorNode.expr.accept(this);
                            entity rs;
                            IRType declIRType = declaratorNode.expr.irType;
                            if (tmpIrType.isString && declIRType.cDef == null) {
                                rs = constStringCastToString(declaratorNode.expr);
                            }else if (tmpIrType.ptrNum == 0 && declIRType.ptrNum == 0 && tmpIrType.iNum!=declIRType.iNum) {
                                convertOp.convertType convert;
                                if (tmpIrType.iNum > declIRType.iNum) convert = convertOp.convertType.SEXT;
                                else convert = convertOp.convertType.TRUNC;
                                rs = new register();
                                currentBlock.push_back(new convertOp((register) rs, declaratorNode.expr.rd, convert, tmpIrType, declIRType));
                            } else rs = declaratorNode.expr.rd;
                            currentBlock.push_back(new store(rs, rd, tmpIrType));
                        }
                    } else {
                        currentScope.linkRegister(declaratorNode.Identifier, rd, tmpIrType.getPtr());
                        entity en;
                        if (declaratorNode.expr != null) {
                            currentBlock = new block();
                            currentFunc = new funcDef();
                            currentFunc.returnType = voidIrType;
                            currentFunc.funcId = "_global_var_init." + initFuncCounter++;
                            currentFunc.rootBlock = currentBlock;
                            declaratorNode.expr.accept(this);
                            if (declaratorNode.expr.rd instanceof constant) en = declaratorNode.expr.rd;
                            else {
                                if (tmpIrType.ptrNum > 0) en = constVoid;
                                else en = constZero;
                                register rs;
                                if (tmpIrType.isString && declaratorNode.expr.irType.cDef == null) {
                                    rs = constStringCastToString(declaratorNode.expr);
                                } else rs = (register) declaratorNode.expr.rd;
                                currentBlock.push_back(new store(rs, rd, tmpIrType));
                                currentBlock.push_back(new ret(null, voidIrType));
                                pg.push_back(currentFunc);
                                globalInitializer.rootBlock.push_back(new call(null, voidIrType, currentFunc.funcId));
                            }
                            currentFunc = null;
                            currentBlock = null;
                        } else {
                            if (tmpIrType.ptrNum > 0) en = constVoid;
                            else en = constZero;
                        }
                        rd.label = declaratorNode.Identifier;
                        pg.push_back(new globalVarDecl(rd, tmpIrType, en, declaratorNode.Identifier));
                    }
                } else {
                    currentScope.defineVariable(declaratorNode.Identifier, t, declaratorNode.pos);
                    //undefined behavior: initialization of member
                }
            }
        }
    }

    @Override
    public void visit(classNode it) {
        currentStruct = (classType) gScope.getTypeFromName(it.name, it.pos);
        currentScope = new Scope(currentScope);
        currentClassDef = idToDef.get(it.name);
        pg.push_back(currentClassDef);
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
        currentClassDef = null;
        currentStruct = null;
        currentScope = currentScope.parentScope();
    }

    @Override
    public void visit(exprStmtNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(selectStmtNode it) {
        it.cond.accept(this);
        block TBlock = new block(), FBlock, ConvergeBlock = new block();
        if (it.falseStmt != null) {
            FBlock = new block();
            if (it.cond.rd instanceof constant) {
                constant con = (constant) it.cond.rd;
                ConvergeBlock.jumpTo = true;
                if (con.getBoolValue()) {
                    currentBlock.push_back(new br(null, TBlock, null));
                    currentBlock.successors.add(TBlock);
                    TBlock.jumpTo = true;
                    currentBlock = TBlock;
                    currentScope = new globalScope(currentScope);
                    it.trueStmt.accept(this);
                    currentScope = currentScope.parentScope();
                } else {
                    currentBlock.push_back(new br(null, FBlock, null));
                    currentBlock.successors.add(FBlock);
                    FBlock.jumpTo = true;
                    currentBlock = FBlock;
                    currentScope = new globalScope(currentScope);
                    it.falseStmt.accept(this);
                    currentScope = currentScope.parentScope();
                }
                currentBlock.push_back(new br(null, ConvergeBlock, null));
                currentBlock.successors.add(ConvergeBlock);
            } else {
                register rdCmp;
                if (it.cond.irType.iNum != 1) {
                    rdCmp = new register();
                    currentBlock.push_back(new convertOp(rdCmp, it.cond.rd, convertOp.convertType.TRUNC, i1, it.cond.irType));
                } else rdCmp = (register) it.cond.rd;
                currentBlock.push_back(new br(rdCmp, TBlock, FBlock));
                currentBlock.successors.add(TBlock);
                currentBlock.successors.add(FBlock);
                currentBlock.successors.add(ConvergeBlock);
                TBlock.jumpTo = FBlock.jumpTo = ConvergeBlock.jumpTo = true;
                currentBlock = TBlock;
                currentScope = new globalScope(currentScope);
                it.trueStmt.accept(this);
                currentScope = currentScope.parentScope();
                currentBlock.push_back(new br(null, ConvergeBlock, null));
                currentBlock = FBlock;
                currentScope = new globalScope(currentScope);
                it.falseStmt.accept(this);
                currentScope = currentScope.parentScope();
                currentBlock.push_back(new br(null, ConvergeBlock, null));
            }
            currentBlock = ConvergeBlock;
        } else {
            currentScope = new globalScope(currentScope);
            if (it.cond.rd instanceof constant) {
                constant con = (constant) it.cond.rd;
                ConvergeBlock.jumpTo = true;
                if (con.getBoolValue()) {
                    currentBlock.push_back(new br(null, TBlock, null));
                    currentBlock.successors.add(TBlock);
                    currentBlock.successors.add(ConvergeBlock);
                    TBlock.jumpTo = true;
                    currentBlock = TBlock;
                    it.trueStmt.accept(this);
                    currentBlock.push_back(new br(null, ConvergeBlock, null));
                } else {
                    currentBlock.push_back(new br(null, ConvergeBlock, null));
                    currentBlock.successors.add(ConvergeBlock);
                }
            } else {
                register rdCmp;
                if (it.cond.irType.iNum != 1) {
                    rdCmp = new register();
                    currentBlock.push_back(new convertOp(rdCmp, it.cond.rd, convertOp.convertType.TRUNC, i1, it.cond.irType));
                } else rdCmp = (register) it.cond.rd;
                currentBlock.push_back(new br(rdCmp, TBlock, ConvergeBlock));
                currentBlock.successors.add(TBlock);
                currentBlock.successors.add(ConvergeBlock);
                TBlock.jumpTo = ConvergeBlock.jumpTo = true;
                currentBlock = TBlock;
                it.trueStmt.accept(this);
                currentBlock.push_back(new br(null, ConvergeBlock, null));
            }
            currentBlock = ConvergeBlock;
            currentScope = currentScope.parentScope();
        }
    }

    @Override
    public void visit(iterStmtNode it) {
        currentScope = new Scope(currentScope);
        block parentLoopExitBlock = loopExitBlock;
        block parentLoopContinueBlock = loopContinueBlock;
        if (it.isFor) {
            block body = new block(), checkBlock = new block(), exitBlock = new block(), incrBlock = new block();
            body.jumpTo = checkBlock.jumpTo = exitBlock.jumpTo = true;
            currentBlock.successors.add(checkBlock);
            currentBlock.successors.add(body);
            if (it.incrExpr != null) {
                incrBlock.jumpTo = true;
                loopContinueBlock = incrBlock;
                currentBlock.successors.add(incrBlock);
            } else loopContinueBlock = checkBlock;
            loopExitBlock = exitBlock;
            currentBlock.successors.add(exitBlock);
            if (it.initStmt != null) it.initStmt.accept(this);
            currentBlock.push_back(new br(null, checkBlock, null));
            currentBlock = checkBlock;
            if (it.cond != null) {
                it.cond.accept(this);
                currentBlock.push_back(new br((register) it.cond.rd, body, exitBlock));
            } else currentBlock.push_back(new br(null, body, null));
            currentBlock = body;
            it.mainStmt.accept(this);
            if (it.incrExpr != null) {
                currentBlock.push_back(new br(null, incrBlock, null));
                currentBlock = incrBlock;
                it.incrExpr.accept(this);
            }
            currentBlock.push_back(new br(null, checkBlock, null));
            currentBlock = exitBlock;
        } else {
            block body = new block(), checkBlock = new block(), exitBlock = new block();
            loopExitBlock = exitBlock;
            loopContinueBlock = checkBlock;
            body.jumpTo = checkBlock.jumpTo = exitBlock.jumpTo = true;
            currentBlock.successors.add(checkBlock);
            currentBlock.successors.add(body);
            currentBlock.successors.add(exitBlock);
            currentBlock.push_back(new br(null, checkBlock, null));
            currentBlock = checkBlock;
            it.cond.accept(this);
            if (it.cond.rd instanceof constant) {
                constant con = (constant) it.cond.rd;
                if (con.getBoolValue()) {
                    currentBlock.push_back(new br(null,body,null));
                } else currentBlock.push_back(new br(null,exitBlock,null));
            } else currentBlock.push_back(new br((register) it.cond.rd, body, exitBlock));
            currentBlock = body;
            it.mainStmt.accept(this);
            currentBlock.push_back(new br(null, checkBlock, null));
            currentBlock = exitBlock;
        }
        loopExitBlock = parentLoopExitBlock;
        loopContinueBlock = parentLoopContinueBlock;
        currentScope = currentScope.parentScope();
    }

    @Override
    public void visit(jumpStmtNode it) {
        if (it.isReturn) {
            if (it.expr != null) {
                it.expr.accept(this);
                if (currentFunc.retReg != null) {
                    entity rd;
                    IRType rsIRType = it.expr.irType, targetIRType = currentFunc.returnType;
                    if (! (it.expr.rd instanceof constant)) {
                        if (rsIRType.isString || targetIRType.isString) {
                            //const string to string
                            if (rsIRType.cDef == null) rd = constStringCastToString(it.expr);
                            else rd = it.expr.rd;
                        } else if (!rsIRType.equal(targetIRType)) {
                            rd = new register();
                            convertOp.convertType convertType;
                            if (rsIRType.iNum < targetIRType.iNum) convertType = convertOp.convertType.ZEXT;
                            else convertType = convertOp.convertType.TRUNC;
                            currentBlock.push_back(new convertOp((register) rd, it.expr.rd, convertType, targetIRType, rsIRType));
                        } else rd = it.expr.rd;
                    } else rd = it.expr.rd;
                    currentBlock.push_back(new store(rd, currentFunc.retReg, currentFunc.returnType));
                    //currentBlock.push_back(new load((register)rd,currentFunc.retReg,currentFunc.returnType.getPtr()));
                }
                currentBlock.push_back(new br(null, currentFunc.returnBlock, null));
                //ret retStmt = new ret(rd,currentFunc.returnType);
                //currentBlock.push_back(retStmt);
            } else {
                currentBlock.push_back(new br(null, currentFunc.returnBlock, null));
                /*IRType irType = voidIrType;
                ret retStmt = new ret(constVoid,irType);
                currentBlock.push_back(retStmt);*/
            }
        } else {
            if (it.isContinue) {
                currentBlock.push_back(new br(null, loopContinueBlock, null));
            } else if (it.isBreak) {
                currentBlock.push_back(new br(null, loopExitBlock, null));
            }
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
        it.irType = firstExpr.irType;
    }

    private register constStringCastToString(exprNode firstExpr) {
        IRType firstIRType = firstExpr.irType;
        register receiveReg = new register(), afterCast = new register(), rdLen = new register(), rdCptr = new register(), i8Ptr = new register();
        call tmpCall = new call(receiveReg, i8Star, "myNew");
        tmpCall.push_back(new entityTypePair(new constant(12), i64));
        currentBlock.push_back(tmpCall);
        currentBlock.push_back(new bitcast(afterCast, receiveReg, stringStar, i8Star));
        currentBlock.push_back(new getelementptr(rdLen, afterCast, stringStar, constZero, constZero));
        currentBlock.push_back(new store(new constant(firstIRType.arrayLen - 1), rdLen, i32));
        currentBlock.push_back(new bitcast(i8Ptr, (register) firstExpr.rd, i8Star, firstIRType));
        currentBlock.push_back(new getelementptr(rdCptr, afterCast, stringStar, constZero, constUnit));
        currentBlock.push_back(new store(i8Ptr, rdCptr, i8Star));
        return afterCast;
    }

    @Override
    public void visit(assignExprNode it) {
        if (it.exprList != null) {
            for (exprNode exprNode : it.exprList) {
                exprNode.accept(this);
            }
            exprNode firstExpr = it.exprList.get(0);
            it.rd = firstExpr.rd;
            it.irType = firstExpr.irType;
            it.logicExpr.accept(this);
            if (!(firstExpr.rd instanceof constant && (((constant) firstExpr.rd).genre == constant.Genre.VOID)) && !it.logicExpr.irType.equal(firstExpr.irType)) {
                register rd = new register();
                if (it.logicExpr.irType.isString || firstExpr.irType.isString) {
                    //const string to string
                    rd = constStringCastToString(firstExpr);
                } else if (it.logicExpr.irType.ptrNum == 0 && firstExpr.irType.ptrNum == 0) {
                    convertOp.convertType convert;
                    if (it.logicExpr.irType.iNum > firstExpr.irType.iNum) convert = convertOp.convertType.SEXT;
                    else convert = convertOp.convertType.TRUNC;
                    currentBlock.push_back(new convertOp(rd, it.rd, convert, it.logicExpr.irType, firstExpr.irType));
                } else {
                    currentBlock.push_back(new bitcast(rd, (register) it.rd, it.logicExpr.irType, firstExpr.irType));
                }
                currentBlock.push_back(new store(rd, it.logicExpr.idReg, it.logicExpr.irType));
            } else currentBlock.push_back(new store(it.rd, it.logicExpr.idReg, it.logicExpr.irType));
        } else {
            it.logicExpr.accept(this);
            it.rd = it.logicExpr.rd;
            it.idReg = it.logicExpr.idReg;
            it.irType = it.logicExpr.irType;
        }
    }

    @Override
    public void visit(logicOrExprNode it) {
        int len = it.exprList.size();
        exprNode firstExpr = it.exprList.get(0);
        entity res;
        if (len == 1) {
            firstExpr.accept(this);
            res = firstExpr.rd;
        } else {
            block exitBl = new block();
            exitBl.jumpTo = true;
            res = new register();
            phi p = new phi((register) res, i1);
            exitBl.push_back(p);
            boolean meetConstantFlag = false;
            for (int i = 0; i < len - 1; ++i) {
                firstExpr.accept(this);
                block bl = new block();
                bl.jumpTo = true;
                if (firstExpr.rd instanceof constant) {
                    constant con = (constant) firstExpr.rd;
                    if (con.getBoolValue()) {
                        meetConstantFlag = true;
                        p.push_back(new entityBlockPair(new constant(true), currentBlock));
                        currentBlock.push_back(new br(null, exitBl, null));
                        break;
                    } else {
                        currentBlock.push_back(new br(null, bl, null));
                    }
                } else {
                    if (firstExpr.irType.iNum == 8) {
                        register rd = new register();
                        currentBlock.push_back(new convertOp(rd, firstExpr.rd, convertOp.convertType.TRUNC, i1, firstExpr.irType));
                        firstExpr.rd = rd;
                        firstExpr.irType = i1;
                    } else if (firstExpr.irType.iNum != 1) {
                        register rd = new register();
                        currentBlock.push_back(new icmp(rd, firstExpr.rd, constZero, icmp.cmpOpType.SGT, firstExpr.irType));
                        firstExpr.rd = rd;
                        firstExpr.irType = i1;
                    }
                    currentBlock.push_back(new br((register) firstExpr.rd, exitBl, bl));
                }
                p.push_back(new entityBlockPair(new constant(true), currentBlock));
                currentBlock.successors.add(bl);
                currentBlock = bl;
                firstExpr = it.exprList.get(i + 1);
            }
            if (!meetConstantFlag) {
                firstExpr.accept(this);
                if (firstExpr.rd instanceof constant) {
                    constant con = (constant) firstExpr.rd;
                    if (con.getBoolValue()) {
                        p.push_back(new entityBlockPair(constUnit, currentBlock));
                    } else {
                        p.push_back(new entityBlockPair(constZero, currentBlock));
                    }
                } else {
                    if (firstExpr.irType.iNum == 8) {
                        register rd = new register();
                        currentBlock.push_back(new convertOp(rd, firstExpr.rd, convertOp.convertType.TRUNC, i1, firstExpr.irType));
                        firstExpr.rd = rd;
                        firstExpr.irType = i1;
                    } else if (firstExpr.irType.iNum != 1) {
                        register rd = new register();
                        currentBlock.push_back(new icmp(rd, firstExpr.rd, constZero, icmp.cmpOpType.SGT, firstExpr.irType));
                        firstExpr.rd = rd;
                        firstExpr.irType = i1;
                    }
                    p.push_back(new entityBlockPair(firstExpr.rd, currentBlock));
                }
            }
            currentBlock.push_back(new br(null, exitBl, null));
            currentBlock.successors.add(exitBl);
            currentBlock = exitBl;
        }
        it.rd = res;
        it.idReg = firstExpr.idReg;
        it.irType = firstExpr.irType;
    }

    @Override
    public void visit(logicAndExprNode it) {
        int len = it.exprList.size();
        exprNode firstExpr = it.exprList.get(0);
        entity res;
        if (len == 1) {
            firstExpr.accept(this);
            res = firstExpr.rd;
        } else {
            block exitBl = new block();
            exitBl.jumpTo = true;
            res = new register();
            phi p = new phi((register) res, i1);
            exitBl.push_back(p);
            boolean meetConstantFlag = false;
            for (int i = 0; i < len - 1; ++i) {
                firstExpr.accept(this);
                block bl = new block();
                bl.jumpTo = true;
                if (firstExpr.rd instanceof constant) {
                    constant con = (constant) firstExpr.rd;
                    if (con.getBoolValue()) {
                        currentBlock.push_back(new br(null, bl, null));
                    } else {
                        meetConstantFlag = true;
                        p.push_back(new entityBlockPair(new constant(false), currentBlock));
                        currentBlock.push_back(new br(null, exitBl, null));
                        break;
                    }
                } else {
                    if (firstExpr.irType.iNum == 8) {
                        register rd = new register();
                        currentBlock.push_back(new convertOp(rd, firstExpr.rd, convertOp.convertType.TRUNC, i1, firstExpr.irType));
                        firstExpr.rd = rd;
                        firstExpr.irType = i1;
                    } else if (firstExpr.irType.iNum != 1) {
                        register rd = new register();
                        currentBlock.push_back(new icmp(rd, firstExpr.rd, constZero, icmp.cmpOpType.SGT, firstExpr.irType));
                        firstExpr.rd = rd;
                        firstExpr.irType = i1;
                    }
                    currentBlock.push_back(new br((register) firstExpr.rd, bl, exitBl));
                }
                p.push_back(new entityBlockPair(new constant(false), currentBlock));
                currentBlock.successors.add(bl);
                currentBlock = bl;
                firstExpr = it.exprList.get(i + 1);
            }
            if (!meetConstantFlag) {
                firstExpr.accept(this);
                if (firstExpr.rd instanceof constant) {
                    constant con = (constant) firstExpr.rd;
                    if (con.getBoolValue()) {
                        p.push_back(new entityBlockPair(constUnit, currentBlock));
                    } else {
                        p.push_back(new entityBlockPair(constZero, currentBlock));
                    }
                } else {
                    if (firstExpr.irType.iNum == 8) {
                        register rd = new register();
                        currentBlock.push_back(new convertOp(rd, firstExpr.rd, convertOp.convertType.TRUNC, i1, firstExpr.irType));
                        firstExpr.rd = rd;
                        firstExpr.irType = i1;
                    } else if (firstExpr.irType.iNum != 1) {
                        register rd = new register();
                        currentBlock.push_back(new icmp(rd, firstExpr.rd, constZero, icmp.cmpOpType.SGT, firstExpr.irType));
                        firstExpr.rd = rd;
                        firstExpr.irType = i1;
                    }
                    p.push_back(new entityBlockPair(firstExpr.rd, currentBlock));
                }
            }
            currentBlock.push_back(new br(null, exitBl, null));
            currentBlock.successors.add(exitBl);
            currentBlock = exitBl;
        }
        it.rd = res;
        it.idReg = firstExpr.idReg;
        it.irType = firstExpr.irType;
    }

    @Override
    public void visit(inclusiveOrExprNode it) {
        exprNode firstExpr = it.exprList.get(0);
        firstExpr.accept(this);
        int listLen = it.exprList.size();
        entity lastRes = firstExpr.rd;
        for (int i = 1; i < listLen; ++i) {
            exprNode second = it.exprList.get(i);
            second.accept(this);
            binary.opTye op = binary.opTye.OR;
            register rd = new register();
            currentBlock.push_back(new binary(op, firstExpr.irType, rd, lastRes, second.rd));
            lastRes = rd;
        }
        it.rd = lastRes;
        it.idReg = firstExpr.idReg;
        it.irType = firstExpr.irType;
    }

    @Override
    public void visit(exclusiveOrExprNode it) {
        exprNode firstExpr = it.exprList.get(0);
        firstExpr.accept(this);
        int listLen = it.exprList.size();
        entity lastRes = firstExpr.rd;
        for (int i = 1; i < listLen; ++i) {
            exprNode second = it.exprList.get(i);
            second.accept(this);
            binary.opTye op = binary.opTye.XOR;
            register rd = new register();
            currentBlock.push_back(new binary(op, i32, rd, lastRes, second.rd));
            lastRes = rd;
        }
        it.rd = lastRes;
        it.idReg = firstExpr.idReg;
        it.irType = firstExpr.irType;
    }

    @Override
    public void visit(andExprNode it) {
        exprNode firstExpr = it.exprList.get(0);
        firstExpr.accept(this);
        int listLen = it.exprList.size();
        entity lastRes = firstExpr.rd;
        for (int i = 1; i < listLen; ++i) {
            exprNode second = it.exprList.get(i);
            second.accept(this);
            binary.opTye op = binary.opTye.AND;
            register rd = new register();
            currentBlock.push_back(new binary(op, i32, rd, lastRes, second.rd));
            lastRes = rd;
        }
        it.rd = lastRes;
        it.idReg = firstExpr.idReg;
        it.irType = firstExpr.irType;
    }

    @Override
    public void visit(equalExprNode it) {
        exprNode firstExpr = it.exprList.get(0);
        firstExpr.accept(this);
        int listLen = it.exprList.size();
        entity lastRes = firstExpr.rd;
        if (listLen > 1 && firstExpr.irType.isString) {
            if (firstExpr.irType.cDef == null) lastRes = constStringCastToString(firstExpr);
            for (int i = 1; i < listLen; ++i) {
                exprNode second = it.exprList.get(i);
                second.accept(this);
                String ss = it.OpList.get(i - 1);
                icmp.cmpOpType op = Objects.equals(ss, "==") ? icmp.cmpOpType.EQ : icmp.cmpOpType.NEQ;
                register secondRs;
                if (second.irType.cDef == null) secondRs = constStringCastToString(second);
                else secondRs = (register) second.rd;
                register rd = new register(), rdCmp = new register();
                call tmpCall = new call(rdCmp, i32, "_string_getStrcmp");
                tmpCall.push_back(new entityTypePair(lastRes, stringStar));
                tmpCall.push_back(new entityTypePair(secondRs, stringStar));
                currentBlock.push_back(tmpCall);
                currentBlock.push_back(new icmp(rd, rdCmp, constZero, op, i32));
                lastRes = rd;
            }
        } else {
            for (int i = 1; i < listLen; ++i) {
                exprNode second = it.exprList.get(i);
                second.accept(this);
                String ss = it.OpList.get(i - 1);
                icmp.cmpOpType op = Objects.equals(ss, "==") ? icmp.cmpOpType.EQ : icmp.cmpOpType.NEQ;
                register rd = new register();
                currentBlock.push_back(new icmp(rd, lastRes, second.rd, op, firstExpr.irType));
                lastRes = rd;
            }
        }
        it.rd = lastRes;
        it.idReg = firstExpr.idReg;
        it.irType = (listLen > 1) ? i1 : firstExpr.irType;
    }

    @Override
    public void visit(relationExprNode it) {
        exprNode firstExpr = it.exprList.get(0);
        firstExpr.accept(this);
        int listLen = it.exprList.size();
        entity lastRes = firstExpr.rd;
        if ( listLen > 1 &&firstExpr.irType.isString ) {
            if (firstExpr.irType.cDef == null) lastRes = constStringCastToString(firstExpr);
            for (int i = 1; i < listLen; ++i) {
                exprNode second = it.exprList.get(i);
                second.accept(this);
                String ss = it.OpList.get(i - 1);
                icmp.cmpOpType op = Objects.equals(ss, "<") ? icmp.cmpOpType.SLT :
                        Objects.equals(ss, "<=") ? icmp.cmpOpType.SLE :
                                Objects.equals(ss, ">") ? icmp.cmpOpType.SGT : icmp.cmpOpType.SGE;
                register secondRs;
                if (second.irType.cDef == null) secondRs = constStringCastToString(second);
                else secondRs = (register) second.rd;
                register rd = new register(), rdCmp = new register();
                call tmpCall = new call(rdCmp, i32, "_string_getStrcmp");
                tmpCall.push_back(new entityTypePair(lastRes, stringStar));
                tmpCall.push_back(new entityTypePair(secondRs, stringStar));
                currentBlock.push_back(tmpCall);
                currentBlock.push_back(new icmp(rd, rdCmp, constZero, op, i32));
                lastRes = rd;
            }
        } else {
            for (int i = 1; i < listLen; ++i) {
                exprNode second = it.exprList.get(i);
                second.accept(this);
                String ss = it.OpList.get(i - 1);
                icmp.cmpOpType op = Objects.equals(ss, "<") ? icmp.cmpOpType.SLT :
                        Objects.equals(ss, "<=") ? icmp.cmpOpType.SLE :
                                Objects.equals(ss, ">") ? icmp.cmpOpType.SGT : icmp.cmpOpType.SGE;
                register rd = new register();
                currentBlock.push_back(new icmp(rd, lastRes, second.rd, op, firstExpr.irType));
                lastRes = rd;
            }
        }
        it.rd = lastRes;
        it.idReg = firstExpr.idReg;
        it.irType = (listLen > 1) ? i1 : firstExpr.irType;
    }

    @Override
    public void visit(shiftExprNode it) {
        exprNode firstExpr = it.exprList.get(0);
        firstExpr.accept(this);
        int listLen = it.exprList.size();
        entity lastRes = firstExpr.rd;
        for (int i = 1; i < listLen; ++i) {
            exprNode second = it.exprList.get(i);
            second.accept(this);
            binary.opTye op = (Objects.equals(it.OpList.get(i - 1), ">>")) ? binary.opTye.ASHR : binary.opTye.SHL;
            register rd = new register();
            currentBlock.push_back(new binary(op, i32, rd, lastRes, second.rd));
            lastRes = rd;
        }
        it.rd = lastRes;
        it.idReg = firstExpr.idReg;
        it.irType = firstExpr.irType;
    }

    @Override
    public void visit(addictiveExprNode it) {
        exprNode firstExpr = it.exprList.get(0);
        firstExpr.accept(this);
        int listLen = it.exprList.size();
        entity lastRes = firstExpr.rd;
        IRType resIrType;
        if (listLen > 1 &&firstExpr.irType.isString ) {
            if (firstExpr.irType.cDef == null) lastRes = constStringCastToString(firstExpr);
            for (int i = 1; i < listLen; ++i) {
                exprNode second = it.exprList.get(i);
                second.accept(this);
                register secondRs;
                if (second.irType.cDef == null) secondRs = constStringCastToString(second);
                else secondRs = (register) second.rd;
                register rd = new register();
                call tmpCall = new call(rd, stringStar, "_string_stringAppend");
                tmpCall.push_back(new entityTypePair(lastRes, stringStar));
                tmpCall.push_back(new entityTypePair(secondRs, stringStar));
                currentBlock.push_back(tmpCall);
                lastRes = rd;
            }
            resIrType = stringStar;
        } else {
            resIrType = firstExpr.irType;
            for (int i = 1; i < listLen; ++i) {
                exprNode second = it.exprList.get(i);
                second.accept(this);
                binary.opTye op = (Objects.equals(it.OpList.get(i - 1), "+")) ? binary.opTye.ADD : binary.opTye.SUB;
                register rd = new register();
                currentBlock.push_back(new binary(op, i32, rd, lastRes, second.rd));
                lastRes = rd;
            }
        }
        it.rd = lastRes;
        it.idReg = firstExpr.idReg;
        it.irType = resIrType;
    }

    @Override
    public void visit(multiExprNode it) {
        exprNode firstExpr = it.exprList.get(0);
        firstExpr.accept(this);
        int listLen = it.exprList.size();
        entity lastRes = firstExpr.rd;
        for (int i = 1; i < listLen; ++i) {
            exprNode second = it.exprList.get(i);
            second.accept(this);
            binary.opTye op = (Objects.equals(it.OpList.get(i - 1), "*")) ? binary.opTye.MUL :
                    (Objects.equals(it.OpList.get(i - 1), "%")) ? binary.opTye.MOD : binary.opTye.SDIV;
            register rd = new register();
            currentBlock.push_back(new binary(op, i32, rd, lastRes, second.rd));
            lastRes = rd;
        }
        it.rd = lastRes;
        it.idReg = firstExpr.idReg;
        it.irType = firstExpr.irType;
    }

    @Override
    public void visit(unaryExprNode it) {
        if (it.postfixExpr != null) {
            it.postfixExpr.accept(this);
            it.idReg = it.postfixExpr.idReg;
            it.rd = it.postfixExpr.rd;
            it.irType = it.postfixExpr.irType;
        } else if (it.newExpr != null) {
            it.newExpr.accept(this);
            it.rd = it.newExpr.rd;
            it.idReg = it.newExpr.idReg;
            it.irType = it.newExpr.irType;
        } else {
            //unary logic operator is undefined, so it is not considered here.
            it.unaryExpr.accept(this);
            it.idReg = it.unaryExpr.idReg;
            it.irType = it.unaryExpr.irType;
            it.rd = it.unaryExpr.rd;
            if (Objects.equals(it.op, "++") || Objects.equals(it.op, "--")) {
                binary.opTye op = Objects.equals(it.op, "++") ? binary.opTye.ADD : binary.opTye.SUB;
                register rd = new register();
                currentBlock.push_back(new binary(op, i32, rd, it.unaryExpr.rd, new constant(1)));
                currentBlock.push_back(new store(rd, it.idReg, i32));
                it.rd = rd;
            } else if (Objects.equals(it.op, "!") || Objects.equals(it.op, "not")) {
                if (it.rd instanceof constant) {
                    //not consider int -> boolean convert
                    constant con = (constant) it.rd;
                    con.setBoolValue(!con.getBoolValue());
                } else {
                    register rd = new register(), resource;
                    if (it.irType.iNum != 1) {
                        resource = new register();
                        currentBlock.push_back(new convertOp(resource, it.rd, convertOp.convertType.TRUNC, i1, it.irType));
                    } else resource = (register) it.rd;
                    currentBlock.push_back(new binary(binary.opTye.XOR, i1, rd, resource, constUnit));
                    it.rd = rd;
                    it.irType = i1;
                }
            } else if (Objects.equals(it.op, "-")) {
                register rd = new register();
                currentBlock.push_back(new binary(binary.opTye.SUB, i32, rd, constZero, it.rd));
                it.rd = rd;
            } else if (Objects.equals(it.op, "~")) {

            } else if (Objects.equals(it.op, "*")) {

            } else {

            }
        }
    }

    private register recursiveNew(ArrayList<exprNode> exprList, int recursiveStep, IRType irType) {
        register rd, receiveReg = new register(), i32ptr = new register();
        exprNode presentNode = exprList.get(recursiveStep);
        presentNode.accept(this);
        IRType presentIRType = new IRType(irType);
        presentIRType.ptrNum--;
        call tmpCall = new call(receiveReg, i8Star, "myNew");
        entity mallocSize, arrayLen = presentNode.rd;
        entity rs;
        int irSize = presentIRType.getSize();
        constant constIRSize = new constant(irSize);
        if (presentNode.rd instanceof constant) {
            constant con = (constant) presentNode.rd;
            mallocSize = new constant(con.getIntValue() * irSize + 4);
            rs = presentNode.rd;
        } else {
            register middleReg = new register();
            mallocSize = new register();
            if (presentNode.irType.iNum != 64) {
                rs = new register();
                currentBlock.push_back(new convertOp((register) rs, presentNode.rd, convertOp.convertType.SEXT, i64, i32));
            } else rs = presentNode.rd;
            currentBlock.push_back(new binary(binary.opTye.MUL, i64, middleReg, rs, new constant(irSize)));
            currentBlock.push_back(new binary(binary.opTye.ADD, i64, (register) mallocSize, middleReg, new constant(4)));
        }
        tmpCall.push_back(new entityTypePair(mallocSize, i64));
        currentBlock.push_back(tmpCall);
        currentBlock.push_back(new bitcast(i32ptr, receiveReg, i32Star, i8Star));
        currentBlock.push_back(new store(arrayLen, i32ptr, i32));

        if (irType.cDef == null && irType.iNum == 8) rd = receiveReg;
        else {
            rd = new register();
            currentBlock.push_back(new bitcast(rd, receiveReg, irType, i8Star));
        }
        if (recursiveStep + 1 != exprList.size()) {
            block body = new block(), checkBlock = new block(), exitBlock = new block();
            body.jumpTo = checkBlock.jumpTo = exitBlock.jumpTo = true;
            currentBlock.successors.add(checkBlock);
            currentBlock.successors.add(body);
            currentBlock.successors.add(exitBlock);
            register newLoopRd = new register(), iRd = new register(), cmpResult = new register(), addResult = new register();
            alloca newLoop = new alloca(newLoopRd, i64);
            newLoop.Comments = "for new loop";
            //initialize
            currentFunc.push_back(newLoop);
            currentBlock.push_back(new store(new constant(-irSize + 4), newLoopRd, i64));
            currentBlock.push_back(new br(null, checkBlock, null));
            //checkBlock
            currentBlock = checkBlock;
            currentBlock.push_back(new load(iRd, newLoopRd, i64.getPtr()));
            currentBlock.push_back(new binary(binary.opTye.ADD, i64, addResult, iRd, constIRSize));
            currentBlock.push_back(new store(addResult, newLoopRd, i64));
            currentBlock.push_back(new icmp(cmpResult, iRd, mallocSize, icmp.cmpOpType.SLT, i64));
            currentBlock.push_back(new br(cmpResult, body, exitBlock));
            //loop body
            currentBlock = body;
            register subPtr = new register(), subReceiver;
            currentBlock.push_back(new getelementptr(subPtr, receiveReg, i8Star, iRd, constZero));
            subReceiver = recursiveNew(exprList, recursiveStep + 1, presentIRType);
            register afterBitCast = new register();
            if (irType.cDef == null && irType.iNum == 8) afterBitCast = subPtr;
            else {
                afterBitCast = new register();
                currentBlock.push_back(new bitcast(afterBitCast, subPtr, irType, i8Star));
            }
            currentBlock.push_back(new store(subReceiver, afterBitCast, presentIRType));
            currentBlock.push_back(new br(null, checkBlock, null));
            //exit block
            currentBlock = exitBlock;
        }
        return rd;
    }

    @Override
    public void visit(newExprNode it) {
        if (it.newArray != null) {
            it.type = new Type(gScope.getTypeFromName(it.newArray.type, it.pos));
            it.type.dimension = it.newArray.BracketPair;
            if (it.type.isClass) {
                it.irType = new IRType(idToDef.get(it.type.name), it.type.dimension + 1, 0);
            } else it.irType = new IRType(it.type);
            it.idReg = null;
            it.rd = recursiveNew(it.newArray.exprList, 0, it.irType);
        } else {
            it.type = new Type(gScope.getTypeFromName(it.typename, it.pos));
            if (it.type.isClass) {
                it.irType = new IRType(idToDef.get(it.typename), 1, 0);
            } else it.irType = new IRType(it.type);
            int size = it.irType.cDef.getSize();
            register receive_ptr = new register();
            call tmpCall = new call(receive_ptr, i8Star, "myNew");
            tmpCall.push_back(new entityTypePair(new constant(size), i64));
            currentBlock.push_back(tmpCall);
            it.rd = new register();
            it.idReg = null;
            currentBlock.push_back(new bitcast((register) it.rd, receive_ptr, it.irType, i8Star));
            String constructorName = "_"+it.type.name+"_"+it.type.name;
            if (idToFuncDef.containsKey(constructorName)) {
                call constructor = new call(null,voidIrType,constructorName);
                constructor.parameters.push(new entityTypePair(it.rd,it.irType));
                currentBlock.push_back(constructor);
            }
        }
    }

    @Override
    public void visit(postfixExprNode it) {
        if (it.isSelfOp) {
            it.postfixExpr.accept(this);
            it.idReg = it.postfixExpr.idReg;
            it.rd = it.postfixExpr.rd;
            it.irType = it.postfixExpr.irType;
            register rd = new register();
            binary.opTye op = it.isSelfPlus ? binary.opTye.ADD : binary.opTye.SUB;
            currentBlock.push_back(new binary(op, it.irType, rd, it.rd, new constant(1)));
            currentBlock.push_back(new store(rd, it.idReg, it.irType));
        } else if (it.isDotOp) {
            it.postfixExpr.accept(this);
            IRType irType = it.postfixExpr.irType;
            if (irType.cDef == null || irType.ptrNum > 1) {
                //array size
                register ptrMiddle = new register(), i32Ptr = new register();
                it.rd = new register();
                it.irType = i32;
                it.idReg = null;
                currentBlock.push_back(new bitcast(ptrMiddle, (register) it.postfixExpr.rd, i32Star, it.postfixExpr.irType));
                currentBlock.push_back(new getelementptr(i32Ptr, ptrMiddle, i32Star, constZero, constZero));
                currentBlock.push_back(new load((register) it.rd, i32Ptr, i32Star));
                lastCallId = null;
            } else if (irType.cDef.memberType.containsKey(((idExprNode) it.Expr).Id)) {
                //visit member
                IRTypeWithCounter tmp = irType.cDef.memberType.get(((idExprNode) it.Expr).Id);
                register ptrReg = new register();
                currentBlock.push_back(new getelementptr(ptrReg, (register) it.postfixExpr.rd, it.postfixExpr.irType, constZero, new constant(tmp.counter)));
                it.rd = new register();
                it.irType = tmp.irType.reducePtr();
                it.idReg = ptrReg;
                currentBlock.push_back(new load((register) it.rd, ptrReg, tmp.irType));
            } else {
                //visit method
                classType structTmp = (classType) gScope.getTypeFromName(irType.cDef.structName, it.postfixExpr.pos);
                lastCallFunc = structTmp.methods.get(((idExprNode) it.Expr).Id);
                lastCallId = "_" + structTmp.name + "_" + lastCallFunc.name;
                lastFuncCaller = (register) it.postfixExpr.rd;
                lastFuncCallerIRType = it.postfixExpr.irType;
            }
        } else if (it.isCallOp) {
            it.postfixExpr.accept(this);
            register rd = null;
            IRType ir;
            String currentCallId = lastCallId;
            funcType currentCallFunc = lastCallFunc;
            register currentFuncCaller = lastFuncCaller;
            IRType currentFuncCallerIRType = lastFuncCallerIRType;
            lastCallId = null;
            lastCallFunc = null;
            lastFuncCaller = null;
            lastFuncCallerIRType = null;
            if (currentCallId != null) {
                ////System.out.println("---" + lastCallId + "---");
                funcDef funcTmp = idToFuncDef.get(currentCallId);
                ir = funcTmp.returnType;
                if (!ir.isVoid) rd = new register();
                call tmpCall = new call(rd, ir, currentCallId);
                int counter = 0;
            /*if (it.postfixExpr.irType != null && it.postfixExpr.irType.cDef!=null) {
                counter++;
                tmpCall.push_back(new entityTypePair(it.postfixExpr.rd,it.postfixExpr.irType));
            }*/
                if (Objects.equals(currentCallId, "println") || Objects.equals(currentCallId, "print")) {
                    exprNode expr = it.Expr.exprList.get(0);
                    expr.accept(this);
                    IRType irType = expr.irType;
                    register tmpReg = new register();
                    if (irType.cDef == null) {
                        //const string
                        currentBlock.push_back(new bitcast(tmpReg, (register) expr.rd, i8Star, irType));
                    } else {
                        //string type
                        register rdPtr = new register();
                        currentBlock.push_back(new getelementptr(rdPtr, (register) expr.rd, irType, constZero, constUnit));
                        currentBlock.push_back(new load(tmpReg, rdPtr, i8Star.getPtr()));
                    }
                    tmpCall.push_back(new entityTypePair(tmpReg, i8Star));
                } else {
                    if (currentFuncCaller != null) {
                        ////System.out.println("###" + currentCallId);
                        counter++;
                        tmpCall.push_back(new entityTypePair(currentFuncCaller, currentFuncCallerIRType));
                    }
                    if (it.Expr != null) {
                        for (exprNode expr : it.Expr.exprList) {
                            expr.accept(this);
                            IRType tmpIRType = funcTmp.parameters.get(counter);
                            entity en;
                            if (tmpIRType.equal(expr.irType) || expr.irType.isVoid) en = expr.rd;
                            else {
                                if (tmpIRType.isString) {
                                    //const string
                                    en = constStringCastToString(expr);
                                } else {
                                    register tmpReg = new register();
                                    if (tmpIRType.ptrNum>0 || tmpIRType.cDef!=null || expr.irType.ptrNum>0 || expr.irType.cDef!=null)
                                    currentBlock.push_back(new bitcast(tmpReg, (register) expr.rd, tmpIRType, expr.irType));
                                    else {
                                        convertOp.convertType op = (tmpIRType.iNum>expr.irType.iNum)? convertOp.convertType.ZEXT: convertOp.convertType.TRUNC;
                                        currentBlock.push_back(new convertOp(tmpReg,expr.rd,op,tmpIRType,expr.irType));
                                    }
                                    en = tmpReg;
                                }
                            }
                            tmpCall.push_back(new entityTypePair(en, tmpIRType));
                            counter++;
                        }
                    }
                }
                currentBlock.push_back(tmpCall);
            } else {
                //array size
                ir = it.postfixExpr.irType;
                rd = (register) it.postfixExpr.rd;
            }
            it.rd = rd;
            it.idReg = null;
            it.irType = ir;
        } else if (it.isLocateOp) {
            it.postfixExpr.accept(this);
            it.Expr.accept(this);
            it.rd = new register();
            register ptrReg = new register(), i8ptr = new register(), middlePtr = new register(), locate = new register(), locateMiddle = new register(), afterConvert = new register();
            IRType ptrIRType = it.postfixExpr.irType;
            currentBlock.push_back(new convertOp(afterConvert, it.Expr.rd, convertOp.convertType.SEXT, i64, i32));
            currentBlock.push_back(new binary(binary.opTye.MUL, i64, locateMiddle, afterConvert, new constant(ptrIRType.reducePtr().getSize())));
            currentBlock.push_back(new binary(binary.opTye.ADD, i64, locate, locateMiddle, new constant(4)));
            if (!ptrIRType.equal(i8Star))
                currentBlock.push_back(new bitcast(i8ptr, (register) it.postfixExpr.rd, i8Star, ptrIRType));
            else i8ptr = (register) it.postfixExpr.rd;
            currentBlock.push_back(new getelementptr(middlePtr, i8ptr, i8Star, locate, constZero));
            currentBlock.push_back(new bitcast(ptrReg, middlePtr, ptrIRType, i8Star));
            //currentBlock.push_back(new getelementptr(ptrReg,(register) it.postfixExpr.rd,ptrIRType,it.Expr.rd,constZero));
            it.irType = new IRType(ptrIRType);
            it.irType.ptrNum--;
            currentBlock.push_back(new load((register) it.rd, ptrReg, ptrIRType));
            it.idReg = ptrReg;
        } else {
            it.primaryExpr.accept(this);
            it.rd = it.primaryExpr.rd;
            it.idReg = it.primaryExpr.idReg;
            it.irType = it.primaryExpr.irType;
        }
    }

    @Override
    public void visit(primaryExprNode it) {
        if (it.isLiteral) {
            it.expr.accept(this);
            it.rd = it.expr.rd;
            it.irType = it.expr.irType;
        } else if (it.isExpr) {
            it.expr.accept(this);
            it.rd = it.expr.rd;
            it.idReg = it.expr.idReg;
            it.irType = it.expr.irType;
        } else if (it.isThis) {
            regTypePair regType = currentScope.getEntity("this", true);
            it.rd = new register();
            it.idReg = regType.reg;
            currentBlock.push_back(new load((register) it.rd, it.idReg, regType.irType));
            it.irType = regType.irType.reducePtr();
        } else if (it.isIdExpr) {
            it.expr.accept(this);
            it.idReg = it.expr.idReg;
            it.rd = it.expr.rd;
            it.irType = it.expr.irType;
        } else {
            //lambda
        }
    }

    @Override
    public void visit(constExprNode it) {
        if (it.isInt) {
            it.rd = new constant(Integer.parseInt(it.literal));
            it.irType = i32;
        } else if (it.isBool) {
            it.rd = new constant(Objects.equals(it.literal, "true"));
            it.irType = i1;
        } else if (it.isString) {
            register rd = new register();
            it.rd = rd;
            StringBuilder sBuilder = new StringBuilder();
            int length = 0;
            for (int i = 0; i < it.literal.length() - 1; ++i) {
                char c = it.literal.charAt(i);
                length++;
                if (c == '\\') {
                    ++i;
                    char another = it.literal.charAt(i);
                    if (another == 'n') {
                        sBuilder.append("\\0A");
                    } else if (another == '\\') {
                        sBuilder.append("\\5C");
                    } else if (another == '"') {
                        sBuilder.append("\\22");
                    }
                } else sBuilder.append(c);
            }
            sBuilder.append("\\00\"");
            String content = sBuilder.toString();
            IRType irType = new IRType(0, length, i8);
            irType.isString = true;
            int tmpCnt = pg.globalStringConstants.size();
            rd.label = ".libro.str"+((tmpCnt>0)?"."+tmpCnt:"");
            pg.push_back(new globalStringConstant(content,it.literal, tmpCnt, (register) it.rd, irType));
            it.irType = irType.getPtr();
            it.idReg = (register) it.rd;
        } else if (it.isNull) {
            it.rd = constVoid;
            it.irType = voidIrType;
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
        regTypePair regType;
        ////System.out.println("^^^" + it.Id);
        if (currentScope.containsVariable(it.Id, false)) {
            regType = currentScope.getEntity(it.Id, false);
        } else if (currentStruct != null && currentStruct.members.containsKey(it.Id)) {
            regType = currentScope.getEntity("this", true);
            register thisReg = new register(), ptrReg = new register();
            currentBlock.push_back(new load(thisReg, regType.reg, regType.irType));
            it.rd = new register();
            IRTypeWithCounter tmp = regType.irType.cDef.memberType.get(it.Id);
            //getelementptr's result is still pointer
            currentBlock.push_back(new getelementptr(ptrReg, thisReg, regType.irType.reducePtr(), new constant(0), new constant(tmp.counter)));
            it.idReg = ptrReg;
            it.irType = tmp.irType.reducePtr();
            currentBlock.push_back(new load((register) it.rd, ptrReg, tmp.irType));
            return;
        } else if (currentScope.containsVariable(it.Id, true)) {
            regType = currentScope.getEntity(it.Id, true);
        } else if (currentStruct != null && currentStruct.methods.containsKey(it.Id)) {
            ////System.out.println("abc" + currentStruct.name);
            lastCallFunc = currentStruct.methods.get(it.Id);
            lastCallId = ((currentStruct == null) ? "" : "_" + currentStruct.name + "_") + lastCallFunc.name;
            regTypePair tmp = currentScope.getEntity("this", true);
            register tmpReg = new register();
            currentBlock.push_back(new load(tmpReg, tmp.reg, tmp.irType));
            lastFuncCaller = tmpReg;
            lastFuncCallerIRType = tmp.irType.reducePtr();
            return;
        } else if (gScope.hasFunction(it.Id)) {
            lastCallFunc = gScope.getFunctionFromName(it.Id, it.pos);
            lastCallId = lastCallFunc.name;
            return;
        } else return;
        ////System.out.println("***" + it.Id + "***");
        it.idReg = regType.reg;
        it.irType = regType.irType.reducePtr();
        it.rd = new register();
        currentBlock.push_back(new load((register) it.rd, it.idReg, regType.irType));
    }

    @Override
    public void visit(declaratorNode it) {

    }
}
