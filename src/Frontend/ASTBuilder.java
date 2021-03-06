package Frontend;

import AST.*;
import Parser.MxLBaseVisitor;
import Parser.MxLParser;
import Util.Type.*;
import Util.globalScope;
import Util.position;

import java.util.ArrayList;

public class ASTBuilder extends MxLBaseVisitor<ASTNode> {

    private globalScope gScope;

    public ASTBuilder(globalScope gScope) {
        this.gScope = gScope;
    }

    @Override
    public ASTNode visitProgram(MxLParser.ProgramContext ctx) {
        RootNode root = new RootNode(new position(ctx));
        ctx.declaration().forEach(dc -> root.declList.add((declNode) visit(dc)));
        return root;
    }

    @Override
    public ASTNode visitDeclaration(MxLParser.DeclarationContext ctx) {
        declNode decl = new declNode(new position(ctx));
        if (ctx.functionDefinition() != null) {
            decl.isFuncDef = true;
            decl.funcDef = (funcDefNode) visit(ctx.functionDefinition());
        } else if (ctx.declarationStatement() != null) {
            decl.isDeclStmt = true;
            decl.declStmt = (declStmtNode) visit(ctx.declarationStatement());
        }
        return decl;
    }

    @Override
    public ASTNode visitFunctionDefinition(MxLParser.FunctionDefinitionContext ctx) {
        funcDefNode func = new funcDefNode(new position(ctx), ctx.Identifier().getText());
        func.suite = (compoundStmtNode) visit(ctx.compoundStatement());
        if (ctx.returnType().arraySpecifier() != null)
            func.arraySpecifier = (arraySpecifierNode) visit(ctx.returnType().arraySpecifier());
        else {
            func.arraySpecifier = new arraySpecifierNode(new position(ctx));
            func.arraySpecifier.type = ctx.returnType().getText();
        }
        if (ctx.functionParameterDef() != null) func.parameters = (funcParameterNode) visit(ctx.functionParameterDef());
        return func;
    }

    @Override
    public ASTNode visitFunctionParameterDef(MxLParser.FunctionParameterDefContext ctx) {
        funcParameterNode parameterNode = new funcParameterNode(new position(ctx));
        ctx.varType().forEach(vt -> {
            arraySpecifierNode arraySpecifier = null;
            if (vt.arraySpecifier() != null) arraySpecifier = (arraySpecifierNode) visit(vt);
            else {
                arraySpecifier = new arraySpecifierNode(new position(vt));
                arraySpecifier.type = vt.getText();
            }
            parameterNode.varType.add(arraySpecifier);
        });
        ctx.Identifier().forEach(id -> parameterNode.Id.add(id.getText()));
        return parameterNode;
    }

    @Override
    public ASTNode visitDeclarationStatement(MxLParser.DeclarationStatementContext ctx) {
        declStmtNode declStmt = new declStmtNode(new position(ctx));
        //is class definition in Mx*
        if (ctx.initDeclaratorList() == null) {
            if (ctx.varType().classSpecifier() != null) {
                declStmt.isClassDef = true;
                declStmt.struct = (classNode) visit(ctx.varType().classSpecifier());
            }
        } else {
            if (ctx.varType().arraySpecifier() != null)
                declStmt.arraySpecifier = (arraySpecifierNode) visit(ctx.varType().arraySpecifier());
            else {
                if (ctx.varType().classSpecifier() != null) declStmt.fail = true;
                declStmt.arraySpecifier = new arraySpecifierNode(declStmt.pos);
                declStmt.arraySpecifier.type = ctx.varType().getText();
            }
            declStmt.declaratorList = new ArrayList<>();
            ctx.initDeclaratorList().declarator().forEach(decl -> declStmt.declaratorList.add((declaratorNode) visit(decl)));
        }
        return declStmt;
    }

    @Override
    public ASTNode visitDeclarator(MxLParser.DeclaratorContext ctx) {
        declaratorNode declNode = new declaratorNode(new position(ctx), ctx.Identifier().getText());
        if (ctx.assignmentExpression() != null) declNode.expr = (exprNode) visit(ctx.assignmentExpression());
        return declNode;
    }

    @Override
    public ASTNode visitArraySpecifier(MxLParser.ArraySpecifierContext ctx) {
        arraySpecifierNode arraySpecifier = new arraySpecifierNode(new position(ctx));
        if (ctx.buildInType() != null) arraySpecifier.type = ctx.buildInType().getText();
        else arraySpecifier.type = ctx.Identifier().getText();
        arraySpecifier.emptyBracketPair = ctx.LeftBracket().size();
        return arraySpecifier;
    }

    @Override
    public ASTNode visitClassSpecifier(MxLParser.ClassSpecifierContext ctx) {
        classNode struct = new classNode(new position(ctx), ctx.classHead().Identifier().getText());
        ctx.memberDeclaration().forEach(member -> {
            if (member.constructFunctionDefinition() != null) {
                struct.constructFunc = (funcDefNode) visit(member.constructFunctionDefinition());
            } else if (member.Semi() == null) {
                declNode decl = new declNode(new position(member));
                if (member.declarationStatement() != null) {
                    decl.isDeclStmt = true;
                    decl.declStmt = (declStmtNode) visit(member.declarationStatement());
                } else {
                    decl.isFuncDef = true;
                    decl.funcDef = (funcDefNode) visit(member.functionDefinition());
                }
                struct.declList.add(decl);
            }
        });
        return struct;
    }

    @Override
    public ASTNode visitConstructFunctionDefinition(MxLParser.ConstructFunctionDefinitionContext ctx) {
        funcDefNode funcDef = new funcDefNode(new position(ctx), ctx.Identifier().getText());
        funcDef.isConstructFunc = true;
        funcDef.suite = (compoundStmtNode) visit(ctx.compoundStatement());
        return funcDef;
    }

    @Override
    public ASTNode visitCompoundStatement(MxLParser.CompoundStatementContext ctx) {
        compoundStmtNode compound = new compoundStmtNode(new position(ctx));
        if (ctx.statementSeq() != null) {
            compound.stmtArray = new ArrayList<>();
            ctx.statementSeq().statement().forEach(st -> compound.stmtArray.add((stmtNode) visit(st)));
        }
        return compound;
    }

    @Override
    public ASTNode visitIterationStatement(MxLParser.IterationStatementContext ctx) {
        iterStmtNode iter = new iterStmtNode(new position(ctx), ctx.For() != null, ctx.While() != null);
        if (ctx.condition() != null) iter.cond = (exprNode) visit(ctx.condition());
        iter.mainStmt = (stmtNode) visit(ctx.statement());
        if (iter.isFor) {
            if (ctx.forInitStatement() != null) iter.initStmt = (stmtNode) visit(ctx.forInitStatement());
            if (ctx.forIncrStatement() != null) {
                iter.incrExpr = (exprNode) visit(ctx.forIncrStatement().expression());
            }
        }
        return iter;
    }

    @Override
    public ASTNode visitForInitStatement(MxLParser.ForInitStatementContext ctx) {
        if (ctx.expressionStatement() != null) return visit(ctx.expressionStatement());
        else if (ctx.declarationStatement() != null) return visit(ctx.declarationStatement());
        else {
            stmtNode st = new stmtNode(new position(ctx));
            st.empty = true;
            return st;
        }
    }

    @Override
    public ASTNode visitExpressionStatement(MxLParser.ExpressionStatementContext ctx) {
        exprStmtNode exprStmt = new exprStmtNode(new position(ctx));
        exprStmt.expr = (exprNode) visit(ctx.expression());
        return exprStmt;
    }

    @Override
    public ASTNode visitJumpStatement(MxLParser.JumpStatementContext ctx) {
        jumpStmtNode jump = new jumpStmtNode(new position(ctx), ctx.Break() != null, ctx.Continue() != null);
        if (ctx.Return() != null && ctx.expression() != null) jump.expr = (exprNode) visit(ctx.expression());
        return jump;
    }

    @Override
    public ASTNode visitSelectionStatement(MxLParser.SelectionStatementContext ctx) {
        selectStmtNode select = new selectStmtNode(new position(ctx));
        select.cond = (exprNode) visit(ctx.condition());
        select.trueStmt = (stmtNode) visit(ctx.trueStatement);
        if (ctx.falseStatement != null) select.falseStmt = (stmtNode) visit(ctx.falseStatement);
        return select;
    }

    @Override
    public ASTNode visitCondition(MxLParser.ConditionContext ctx) {
        return visit(ctx.expression());
    }

    @Override
    public ASTNode visitStatement(MxLParser.StatementContext ctx) {
        if (ctx.declarationStatement() != null) return visit(ctx.declarationStatement());
        else if (ctx.expressionStatement() != null) return visit(ctx.expressionStatement());
        else if (ctx.compoundStatement() != null) return visit(ctx.compoundStatement());
        else if (ctx.selectionStatement() != null) return visit(ctx.selectionStatement());
        else if (ctx.jumpStatement() != null) return visit(ctx.jumpStatement());
        else if (ctx.iterationStatement() != null) return visit(ctx.iterationStatement());
        stmtNode st = new stmtNode(new position(ctx));
        st.empty = true;
        return st;
    }

    @Override
    public ASTNode visitExpression(MxLParser.ExpressionContext ctx) {
        exprNode expr = new exprNode(new position(ctx));
        expr.exprList = new ArrayList<>();
        ctx.assignmentExpression().forEach(assign -> expr.exprList.add((assignExprNode) visit(assign)));
        return expr;
    }

    @Override
    public ASTNode visitAssignmentExpression(MxLParser.AssignmentExpressionContext ctx) {
        assignExprNode assign = new assignExprNode(new position(ctx));
        assign.logicExpr = (logicOrExprNode) visit(ctx.logicalOrExpression());
        if (ctx.assignmentExpression() != null) {
            assign.exprList = new ArrayList<>();
            assign.exprList.add((exprNode) visit(ctx.assignmentExpression()));
        }
        return assign;
    }

    @Override
    public ASTNode visitLogicalOrExpression(MxLParser.LogicalOrExpressionContext ctx) {
        logicOrExprNode logicOrExpr = new logicOrExprNode(new position(ctx));
        logicOrExpr.exprList = new ArrayList<>();
        ctx.logicalAndExpression().forEach(logic -> logicOrExpr.exprList.add((exprNode) visit(logic)));
        return logicOrExpr;
    }

    @Override
    public ASTNode visitLogicalAndExpression(MxLParser.LogicalAndExpressionContext ctx) {
        logicAndExprNode logicAndExpr = new logicAndExprNode(new position(ctx));
        logicAndExpr.exprList = new ArrayList<>();
        ctx.inclusiveOrExpression().forEach(logic -> logicAndExpr.exprList.add((exprNode) visit(logic)));
        return logicAndExpr;
    }

    @Override
    public ASTNode visitInclusiveOrExpression(MxLParser.InclusiveOrExpressionContext ctx) {
        inclusiveOrExprNode inclusiveOrExpr = new inclusiveOrExprNode(new position(ctx));
        inclusiveOrExpr.exprList = new ArrayList<>();
        ctx.exclusiveOrExpression().forEach(logic -> inclusiveOrExpr.exprList.add((exprNode) visit(logic)));
        return inclusiveOrExpr;
    }

    @Override
    public ASTNode visitExclusiveOrExpression(MxLParser.ExclusiveOrExpressionContext ctx) {
        exclusiveOrExprNode exclusiveOrExpr = new exclusiveOrExprNode(new position(ctx));
        exclusiveOrExpr.exprList = new ArrayList<>();
        ctx.andExpression().forEach(logic -> exclusiveOrExpr.exprList.add((exprNode) visit(logic)));
        return exclusiveOrExpr;
    }

    @Override
    public ASTNode visitAndExpression(MxLParser.AndExpressionContext ctx) {
        andExprNode andExpr = new andExprNode(new position(ctx));
        andExpr.exprList = new ArrayList<>();
        ctx.equalityExpression().forEach(logic -> andExpr.exprList.add((exprNode) visit(logic)));
        return andExpr;
    }

    @Override
    public ASTNode visitEqualityExpression(MxLParser.EqualityExpressionContext ctx) {
        equalExprNode equalExpr = new equalExprNode(new position(ctx));
        equalExpr.exprList = new ArrayList<>();
        ctx.relationalExpression().forEach(logic -> equalExpr.exprList.add((exprNode) visit(logic)));
        equalExpr.OpList = new ArrayList<>();
        ctx.theEqualOp().forEach(op -> equalExpr.OpList.add(op.getText()));
        return equalExpr;
    }

    @Override
    public ASTNode visitRelationalExpression(MxLParser.RelationalExpressionContext ctx) {
        relationExprNode relationExpr = new relationExprNode(new position(ctx));
        relationExpr.exprList = new ArrayList<>();
        ctx.shiftExpression().forEach(logic -> relationExpr.exprList.add((exprNode) visit(logic)));
        relationExpr.OpList = new ArrayList<>();
        ctx.theCmpOp().forEach(op -> relationExpr.OpList.add(op.getText()));
        return relationExpr;
    }

    @Override
    public ASTNode visitShiftExpression(MxLParser.ShiftExpressionContext ctx) {
        shiftExprNode shiftExpr = new shiftExprNode(new position(ctx));
        shiftExpr.exprList = new ArrayList<>();
        ctx.additiveExpression().forEach(logic -> shiftExpr.exprList.add((exprNode) visit(logic)));
        shiftExpr.OpList = new ArrayList<>();
        ctx.theShiftOp().forEach(op -> shiftExpr.OpList.add(op.getText()));
        return shiftExpr;
    }

    @Override
    public ASTNode visitAdditiveExpression(MxLParser.AdditiveExpressionContext ctx) {
        addictiveExprNode addictiveExpr = new addictiveExprNode(new position(ctx));
        addictiveExpr.exprList = new ArrayList<>();
        ctx.multiplicativeExpression().forEach(logic -> addictiveExpr.exprList.add((exprNode) visit(logic)));
        addictiveExpr.OpList = new ArrayList<>();
        ctx.thePMOp().forEach(op -> addictiveExpr.OpList.add(op.getText()));
        return addictiveExpr;
    }

    @Override
    public ASTNode visitMultiplicativeExpression(MxLParser.MultiplicativeExpressionContext ctx) {
        multiExprNode multiExpr = new multiExprNode(new position(ctx));
        multiExpr.exprList = new ArrayList<>();
        ctx.unaryExpression().forEach(logic -> multiExpr.exprList.add((exprNode) visit(logic)));
        multiExpr.OpList = new ArrayList<>();
        ctx.theSDMOp().forEach(op -> multiExpr.OpList.add(op.getText()));
        return multiExpr;
    }

    @Override
    public ASTNode visitUnaryExpression(MxLParser.UnaryExpressionContext ctx) {
        unaryExprNode unaryExpr = new unaryExprNode(new position(ctx));
        if (ctx.postfixExpression() != null) {
            unaryExpr.postfixExpr = (postfixExprNode) visit(ctx.postfixExpression());
        } else if (ctx.newExpression() != null) {
            unaryExpr.newExpr = (newExprNode) visit(ctx.newExpression());
        } else {
            if (ctx.PlusPlus() != null) unaryExpr.op = ctx.PlusPlus().getText();
            else if (ctx.MinusMinus() != null) unaryExpr.op = ctx.MinusMinus().getText();
            else unaryExpr.op = ctx.unaryOperator().getText();
            unaryExpr.unaryExpr = (unaryExprNode) visit(ctx.unaryExpression());
        }
        return unaryExpr;
    }

    @Override
    public ASTNode visitPostfixExpression(MxLParser.PostfixExpressionContext ctx) {
        postfixExprNode postfixExpr = new postfixExprNode(new position(ctx));
        if (ctx.primaryExpression() != null) {
            postfixExpr.primaryExpr = (primaryExprNode) visit(ctx.primaryExpression());
        } else if (ctx.LeftParen() != null) {
            postfixExpr.isCallOp = true;
            postfixExpr.postfixExpr = (postfixExprNode) visit(ctx.postfixExpression());
            if (ctx.expression() != null) postfixExpr.Expr = (exprNode) visit(ctx.expression());
        } else if (ctx.LeftBracket() != null) {
            postfixExpr.isLocateOp = true;
            postfixExpr.postfixExpr = (postfixExprNode) visit(ctx.postfixExpression());
            postfixExpr.Expr = (exprNode) visit(ctx.expression());
        } else if (ctx.Dot() != null) {
            postfixExpr.isDotOp = true;
            postfixExpr.postfixExpr = (postfixExprNode) visit(ctx.postfixExpression());
            if (ctx.idExpression() != null) postfixExpr.Expr = (idExprNode) visit(ctx.idExpression());
        } else {
            postfixExpr.isSelfOp = true;
            postfixExpr.postfixExpr = (postfixExprNode) visit(ctx.postfixExpression());
            if (ctx.PlusPlus() != null) postfixExpr.isSelfPlus = true;
        }
        return postfixExpr;
    }

    @Override
    public ASTNode visitPrimaryExpression(MxLParser.PrimaryExpressionContext ctx) {
        primaryExprNode primaryExpr = new primaryExprNode(new position(ctx));
        if (ctx.literal() != null) {
            primaryExpr.isLiteral = true;
            primaryExpr.expr = (exprNode) visit(ctx.literal());
        } else if (ctx.This() != null) {
            primaryExpr.isThis = true;
        } else if (ctx.LeftParen() != null) {
            primaryExpr.isExpr = true;
            primaryExpr.expr = (exprNode) visit(ctx.expression());
        } else if (ctx.idExpression() != null) {
            primaryExpr.isIdExpr = true;
            primaryExpr.expr = (exprNode) visit(ctx.idExpression());
        } else {
            primaryExpr.isLambda = true;
            primaryExpr.expr = (exprNode) visit(ctx.lambdaExpression());
        }
        return primaryExpr;
    }

    @Override
    public ASTNode visitLiteral(MxLParser.LiteralContext ctx) {
        constExprNode constExpr = new constExprNode(new position(ctx));
        if (ctx.IntegerLiteral() != null) {
            constExpr.isInt = true;
            constExpr.literal = ctx.IntegerLiteral().getText();
        } else if (ctx.StringLiteral() != null) {
            constExpr.isString = true;
            constExpr.literal = ctx.StringLiteral().getText();
        } else if (ctx.Null() != null) {
            constExpr.literal = "null";
            constExpr.isNull = true;
        } else {
            if (ctx.True() != null) constExpr.literal = "true";
            else constExpr.literal = "false";
            constExpr.isBool = true;
        }
        return constExpr;
    }

    @Override
    public ASTNode visitIdExpression(MxLParser.IdExpressionContext ctx) {
        idExprNode idExpr = new idExprNode(new position(ctx));
        idExpr.Id = ctx.Identifier().getText();
        return idExpr;
    }

    @Override
    public ASTNode visitLambdaExpression(MxLParser.LambdaExpressionContext ctx) {
        lambdaExprNode lambdaExpr = new lambdaExprNode(new position(ctx));
        lambdaExpr.compoundStmt = (compoundStmtNode) visit(ctx.compoundStatement());
        lambdaExpr.funcParameter = (funcParameterNode) visit(ctx.lambdaDeclarator());
        return lambdaExpr;
    }

    @Override
    public ASTNode visitLambdaDeclarator(MxLParser.LambdaDeclaratorContext ctx) {
        if (ctx.functionParameterDef() != null) return visit(ctx.functionParameterDef());
        return null;
    }

    @Override
    public ASTNode visitNewArrayType(MxLParser.NewArrayTypeContext ctx) {
        newArrayNode newArray = new newArrayNode(new position(ctx));
        if (ctx.buildInType() != null) newArray.type = ctx.buildInType().getText();
        else newArray.type = ctx.Identifier().getText();
        newArray.exprList = new ArrayList<>();
        newArray.BracketPair = ctx.LeftBracket().size();
        ctx.expression().forEach(ex -> newArray.exprList.add((exprNode) visit(ex)));
        return newArray;
    }

    @Override
    public ASTNode visitNewExpression(MxLParser.NewExpressionContext ctx) {
        newExprNode newExpr = new newExprNode(new position(ctx));
        if (ctx.newArrayType() != null) newExpr.newArray = (newArrayNode) visit(ctx.newArrayType());
        else if (ctx.buildInType() != null) newExpr.typename = ctx.buildInType().getText();
        else newExpr.typename = ctx.Identifier().getText();
        return newExpr;
    }

}
