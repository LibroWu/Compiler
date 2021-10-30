package Frontend;

import AST.*;
import Util.Type.*;
import Util.globalScope;

import java.util.ArrayList;
import java.util.HashMap;

public class SymbolCollector implements ASTVisitor {
    private globalScope gScope;

    private Type intType = new Type(Type.Types.INT_TYPE),
            boolType = new Type(Type.Types.BOOL_TYPE),
            voidType = new Type(Type.Types.VOID_TYPE);
    private classType stringType = new classType(Type.Types.CLASS_TYPE);
    private funcType printFunc = new funcType(Type.Types.FUNC_TYPE),
            printlnFunc = new funcType(Type.Types.FUNC_TYPE),
            printIntFunc = new funcType(Type.Types.FUNC_TYPE),
            getStringFunc = new funcType(Type.Types.FUNC_TYPE),
            getIntFunc = new funcType(Type.Types.FUNC_TYPE),
            toStringFunc = new funcType(Type.Types.FUNC_TYPE),
            printlnIntFunc = new funcType(Type.Types.FUNC_TYPE);

    public SymbolCollector(globalScope gScope) {
        this.gScope = gScope;
    }

    @Override
    public void visit(RootNode it) {

            //build in methods of string
            funcType lengthFunc = new funcType(Type.Types.FUNC_TYPE),
                    substringFunc = new funcType(Type.Types.FUNC_TYPE),
                    parseIntFunc = new funcType(Type.Types.FUNC_TYPE),
                    ordFunc = new funcType(Type.Types.FUNC_TYPE);
            lengthFunc.name = "length";
            lengthFunc.returnType = intType;

            substringFunc.name = "substring";
            substringFunc.returnType = stringType;
            substringFunc.parameter = new ArrayList<>();
            substringFunc.parameter.add(intType);
            substringFunc.parameter.add(intType);

            parseIntFunc.name = "parseInt";
            parseIntFunc.returnType = intType;

            ordFunc.name = "ord";
            ordFunc.returnType = intType;
            ordFunc.parameter = new ArrayList<>();
            ordFunc.parameter.add(intType);

            //add build in methods into string
            stringType.methods.put("length",lengthFunc);
            stringType.methods.put("substring",substringFunc);
            stringType.methods.put("parseInt",parseIntFunc);
            stringType.methods.put("ord",ordFunc);
            stringType.name = "string";

        //add build in types into globalScope
        gScope.addType("int", intType, it.pos);
        gScope.addType("bool", boolType, it.pos);
        gScope.addType("string", stringType, it.pos);
        gScope.addType("void", voidType, it.pos);
        //build in functions
        printFunc.name = "print";
        printFunc.returnType = voidType;
        printFunc.parameter = new ArrayList<>();
        printFunc.parameter.add(stringType);

        printlnFunc.name = "println";
        printlnFunc.returnType = voidType;
        printlnFunc.parameter = new ArrayList<>();
        printlnFunc.parameter.add(stringType);

        printIntFunc.name = "printInt";
        printIntFunc.returnType = voidType;
        printIntFunc.parameter = new ArrayList<>();
        printIntFunc.parameter.add(intType);

        printlnIntFunc.name = "printlnInt";
        printlnIntFunc.returnType = voidType;
        printlnIntFunc.parameter = new ArrayList<>();
        printlnIntFunc.parameter.add(intType);

        getStringFunc.name = "getString";
        getStringFunc.returnType = stringType;
        getIntFunc = new funcType(Type.Types.FUNC_TYPE);
        getIntFunc.returnType = intType;

        toStringFunc.name = "toString";
        toStringFunc.returnType = stringType;
        toStringFunc.parameter = new ArrayList<>();
        toStringFunc.parameter.add(intType);

        //add build in functions into globalScope
        gScope.addFunction("print", printFunc, it.pos);
        gScope.addFunction("println", printlnFunc, it.pos);
        gScope.addFunction("printInt", printIntFunc, it.pos);
        gScope.addFunction("printlnInt", printlnIntFunc, it.pos);
        gScope.addFunction("getString", getStringFunc, it.pos);
        gScope.addFunction("getInt", getIntFunc, it.pos);
        gScope.addFunction("toString", toStringFunc, it.pos);
        it.declList.forEach(decl ->
        {
            if (decl.isDeclStmt) decl.accept(this);
        });
        it.declList.forEach(decl ->
        {
            if (decl.isFuncDef) decl.accept(this);
        });
    }

    @Override
    public void visit(declNode it) {
        if (it.isFuncDef) it.funcDef.accept(this);
        else it.declStmt.accept(this);
    }

    @Override
    public void visit(declStmtNode it) {
        if (it.isClassDef) it.struct.accept(this);
    }

    @Override
    public void visit(classNode it) {
        classType struct = new classType(Type.Types.CLASS_TYPE);
        struct.name = it.name;
        gScope.addType(it.name, struct, it.pos);
    }

    @Override
    public void visit(funcDefNode it) {
        funcType func = new funcType(Type.Types.FUNC_TYPE);
        func.name = it.id;
        //do not check function overload, which is undefined behavior in MxStar?
        if (it.isConstructFunc) {
            func.returnType = new Type(Type.Types.NULL);
        } else {
            func.returnType = new Type(gScope.getTypeFromName(it.arraySpecifier.type,it.arraySpecifier.pos));
            func.returnType.dimension = it.arraySpecifier.emptyBracketPair;
        }
        if (it.parameters!=null) {
            func.parameter = new ArrayList<>();
            it.parameters.varType.forEach(var -> {
                Type t = new Type(gScope.getTypeFromName(var.type, var.pos));
                t.dimension = var.emptyBracketPair;
                func.parameter.add(t);
            });
        }
        gScope.addFunction(it.id, func, it.pos);
    }

    @Override
    public void visit(arraySpecifierNode it) {

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
    public void visit(compoundStmtNode it) {
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
    public void visit(exprStmtNode it) {
    }

    @Override
    public void visit(idExprNode it) {
    }

    @Override
    public void visit(inclusiveOrExprNode it) {
    }

    @Override
    public void visit(iterStmtNode it) {
    }

    @Override
    public void visit(jumpStmtNode it) {
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
    public void visit(selectStmtNode it) {
    }

    @Override
    public void visit(shiftExprNode it) {
    }

    @Override
    public void visit(stmtNode it) {
    }

    @Override
    public void visit(unaryExprNode it) {
    }

    @Override
    public void visit(newArrayNode it) {
    }
}
