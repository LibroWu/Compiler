package Frontend;

import AST.*;
import Parser.MxLBaseVisitor;
import Parser.MxLParser;
import Util.Type;
import Util.globalScope;
import Util.position;
import org.antlr.v4.runtime.ParserRuleContext;

import java.util.ArrayList;
import java.util.Objects;

public class ASTBuilder extends MxLBaseVisitor<ASTNode> {

    private globalScope gScope;

    public ASTBuilder(globalScope gScope) {
        this.gScope = gScope;
    }

    Type intType, boolType, voidType, stringType;

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
        funcDefNode func = new funcDefNode(new position(ctx), ctx.returnType().toString(), ctx.Identifier().toString());
        func.suite = (compoundStmtNode) visit(ctx.compoundStatement());
        if (ctx.functionParameterDef() != null) func.parameters = (funcParameterNode) visit(ctx.functionParameterDef());
        return func;
    }

    @Override
    public ASTNode visitFunctionParameterDef(MxLParser.FunctionParameterDefContext ctx) {
        funcParameterNode parameterNode = new funcParameterNode(new position(ctx));
        //todo arraySpecifier
        ctx.varType().forEach(vt -> parameterNode.varType.add(vt.toString()));
        ctx.Identifier().forEach(id -> parameterNode.Id.add(id.toString()));
        return parameterNode;
    }

    @Override
    public ASTNode visitDeclarationStatement(MxLParser.DeclarationStatementContext ctx) {
        declStmtNode declStmt = new declStmtNode(new position(ctx));
        //is class definition in Mx*
        if (ctx.initDeclaratorList() == null) {
            declStmt.isClassDef = true;
            if (ctx.varType().classSpecifier() == null) declStmt.fail = true;
            else {
                declStmt.struct = (classNode) visit(ctx.varType().classSpecifier());
            }
        } else {
            //the varType is an array
            if (ctx.arraySpecifier() != null) {
                declStmt.arraySpecifier = (arraySpecifierNode) visit(ctx.arraySpecifier());
            } else {
                if (ctx.varType().classSpecifier() != null) declStmt.fail = true;
                else {
                    declStmt.declaratorList = new ArrayList<>();
                    ctx.initDeclaratorList().declarator().forEach(decltor -> declStmt.declaratorList.add((declaratorNode) visit(decltor)));
                }
            }
        }
        return declStmt;
    }

    @Override
    public ASTNode visitDeclarator(MxLParser.DeclaratorContext ctx) {
        declaratorNode declNode = new declaratorNode(new position(ctx), ctx.Identifier().toString());
        if (ctx.expression() != null) declNode.expr = (exprNode) visit(ctx.expression());
        return declNode;
    }

    @Override
    public ASTNode visitArraySpecifier(MxLParser.ArraySpecifierContext ctx) {

    }

    @Override
    public ASTNode visitClassSpecifier(MxLParser.ClassSpecifierContext ctx) {
        classNode struct = new classNode(new position(ctx), ctx.classHead().Identifier().toString());
        ctx.memberDeclaration().forEach(member -> {
            if (member.constructFunctionDefinition() != null) {
                struct.constructFunc = (funcDefNode) visit(member);
            } else if (member.Semi() == null) {
                struct.declList.add((declNode) visit(member));
            }
        });
        return struct;
    }

    @Override
    public ASTNode visitConstructFunctionDefinition(MxLParser.ConstructFunctionDefinitionContext ctx) {
        funcDefNode funcDef = new funcDefNode(new position(ctx), "", ctx.Identifier().toString());
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
        iter.cond = (exprNode) visit(ctx.condition());
        if (iter.isWhile) {
            iter.mainStmt = (stmtNode) visit(ctx.statement());
        } else {
            iter.initStmt = (stmtNode) visit(ctx.forInitStatement());
            if (ctx.forIncrStatement().expression() != null) {
                iter.incrExpr = (exprNode) visit(ctx.forIncrStatement().expression());
            }
        }
        return iter;
    }

    @Override
    public ASTNode visitForInitStatement(MxLParser.ForInitStatementContext ctx) {
        if (ctx.expressionStatement() != null) return visit(ctx.expressionStatement());
        else return visit(ctx.declarationStatement());
    }

    @Override
    public ASTNode visitExpressionStatement(MxLParser.ExpressionStatementContext ctx) {
        exprStmtNode exprStmt = new exprStmtNode(new position(ctx));
        if (ctx.expression() != null) exprStmt.expr = (exprNode) visit(ctx.expression());
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
    public ASTNode visitStatement(MxLParser.StatementContext ctx) {
        if (ctx.declarationStatement() != null) return visit(ctx.declarationStatement());
        else if (ctx.expressionStatement() != null) return visit(ctx.expressionStatement());
        else if (ctx.compoundStatement() != null) return visit(ctx.compoundStatement());
        else if (ctx.selectionStatement() != null) return visit(ctx.selectionStatement());
        else if (ctx.jumpStatement() != null) return visit(ctx.jumpStatement());
        stmtNode st = new stmtNode(new position(ctx));
        st.empty = true;
        return st;
    }

    @Override
    public ASTNode visitExpression(MxLParser.ExpressionContext ctx) {
        exprNode expr = new exprNode(new position(ctx));
        ctx.assignmentExpression().forEach(assign -> expr.exprList.add((assignExprNode) visit(assign)));
        return expr;
    }
    @Override
    public ASTNode visitAssignmentExpression(MxLParser.AssignmentExpressionContext ctx) {

    }
    @Override
    public ASTNode visitAndExpression(MxLParser.AndExpressionContext ctx) {
    }

    @Override
    public ASTNode visitAdditiveExpression(MxLParser.AdditiveExpressionContext ctx) {
    }



    @Override
    public ASTNode visitBuildInType(MxLParser.BuildInTypeContext ctx) {
    }

    @Override
    public ASTNode visitCondition(MxLParser.ConditionContext ctx) {
    }


    @Override
    public ASTNode visitEqualityExpression(MxLParser.EqualityExpressionContext ctx) {
    }

    @Override
    public ASTNode visitExclusiveOrExpression(MxLParser.ExclusiveOrExpressionContext ctx) {
    }

    @Override
    public ASTNode visitIdExpression(MxLParser.IdExpressionContext ctx) {
    }

    @Override
    public ASTNode visitInclusiveOrExpression(MxLParser.InclusiveOrExpressionContext ctx) {
    }

    @Override
    public ASTNode visitInitDeclaratorList(MxLParser.InitDeclaratorListContext ctx) {
    }


    @Override
    public ASTNode visitLiteral(MxLParser.LiteralContext ctx) {
    }

    @Override
    public ASTNode visitLambdaDeclarator(MxLParser.LambdaDeclaratorContext ctx) {
    }

    @Override
    public ASTNode visitLambdaExpression(MxLParser.LambdaExpressionContext ctx) {
    }

    @Override
    public ASTNode visitLambdaIntroducer(MxLParser.LambdaIntroducerContext ctx) {
    }

    @Override
    public ASTNode visitLogicalAndExpression(MxLParser.LogicalAndExpressionContext ctx) {
    }

    @Override
    public ASTNode visitLogicalOrExpression(MxLParser.LogicalOrExpressionContext ctx) {
    }

    @Override
    public ASTNode visitNewArrayType(MxLParser.NewArrayTypeContext ctx) {
    }

    @Override
    public ASTNode visitNewExpression(MxLParser.NewExpressionContext ctx) {
    }

    @Override
    public ASTNode visitMemberDeclaration(MxLParser.MemberDeclarationContext ctx) {
    }

    @Override
    public ASTNode visitMultiplicativeExpression(MxLParser.MultiplicativeExpressionContext ctx) {
    }

    @Override
    public ASTNode visitPostfixExpression(MxLParser.PostfixExpressionContext ctx) {
    }

    @Override
    public ASTNode visitPrimaryExpression(MxLParser.PrimaryExpressionContext ctx) {
    }


    @Override
    public ASTNode visitShiftExpression(MxLParser.ShiftExpressionContext ctx) {
    }


    @Override
    public ASTNode visitTheOperator(MxLParser.TheOperatorContext ctx) {
    }

    @Override
    public ASTNode visitUnaryExpression(MxLParser.UnaryExpressionContext ctx) {
    }

    @Override
    public ASTNode visitUnaryOperator(MxLParser.UnaryOperatorContext ctx) {
    }

}
