// Generated from D:/workspace/libro_workspace/OS/Compiler/src/Parser\MxL.g4 by ANTLR 4.9.1
package Parser;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MxLParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MxLVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MxLParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MxLParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#arraySpecifier}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArraySpecifier(MxLParser.ArraySpecifierContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#varType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarType(MxLParser.VarTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#buildInType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBuildInType(MxLParser.BuildInTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#returnType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturnType(MxLParser.ReturnTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#declaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclaration(MxLParser.DeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#functionDefinition}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionDefinition(MxLParser.FunctionDefinitionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#functionParameterDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionParameterDef(MxLParser.FunctionParameterDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#declarationStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclarationStatement(MxLParser.DeclarationStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#initDeclaratorList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitDeclaratorList(MxLParser.InitDeclaratorListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#declarator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclarator(MxLParser.DeclaratorContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatement(MxLParser.StatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#statementSeq}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatementSeq(MxLParser.StatementSeqContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#compoundStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCompoundStatement(MxLParser.CompoundStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#expressionStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressionStatement(MxLParser.ExpressionStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#selectionStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSelectionStatement(MxLParser.SelectionStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#iterationStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIterationStatement(MxLParser.IterationStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#jumpStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitJumpStatement(MxLParser.JumpStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#condition}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCondition(MxLParser.ConditionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#forInitStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForInitStatement(MxLParser.ForInitStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#forIncrStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForIncrStatement(MxLParser.ForIncrStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#primaryExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimaryExpression(MxLParser.PrimaryExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#idExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdExpression(MxLParser.IdExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#lambdaExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambdaExpression(MxLParser.LambdaExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#lambdaIntroducer}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambdaIntroducer(MxLParser.LambdaIntroducerContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#lambdaDeclarator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambdaDeclarator(MxLParser.LambdaDeclaratorContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#postfixExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPostfixExpression(MxLParser.PostfixExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#unaryExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryExpression(MxLParser.UnaryExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#unaryOperator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryOperator(MxLParser.UnaryOperatorContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#newExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewExpression(MxLParser.NewExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#newArrayType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewArrayType(MxLParser.NewArrayTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#multiplicativeExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMultiplicativeExpression(MxLParser.MultiplicativeExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#additiveExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAdditiveExpression(MxLParser.AdditiveExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#shiftExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShiftExpression(MxLParser.ShiftExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#relationalExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRelationalExpression(MxLParser.RelationalExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#equalityExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqualityExpression(MxLParser.EqualityExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#andExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAndExpression(MxLParser.AndExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#exclusiveOrExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExclusiveOrExpression(MxLParser.ExclusiveOrExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#inclusiveOrExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInclusiveOrExpression(MxLParser.InclusiveOrExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#logicalAndExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalAndExpression(MxLParser.LogicalAndExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#logicalOrExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalOrExpression(MxLParser.LogicalOrExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#assignmentExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignmentExpression(MxLParser.AssignmentExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpression(MxLParser.ExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#classSpecifier}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassSpecifier(MxLParser.ClassSpecifierContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#classHead}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassHead(MxLParser.ClassHeadContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#memberDeclaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMemberDeclaration(MxLParser.MemberDeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#constructFunctionDefinition}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstructFunctionDefinition(MxLParser.ConstructFunctionDefinitionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#theEqualOp}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTheEqualOp(MxLParser.TheEqualOpContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#theCmpOp}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTheCmpOp(MxLParser.TheCmpOpContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#theShiftOp}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTheShiftOp(MxLParser.TheShiftOpContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#thePMOp}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitThePMOp(MxLParser.ThePMOpContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#theSDMOp}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTheSDMOp(MxLParser.TheSDMOpContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#theOperator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTheOperator(MxLParser.TheOperatorContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLParser#literal}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLiteral(MxLParser.LiteralContext ctx);
}