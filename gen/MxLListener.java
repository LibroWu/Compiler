// Generated from D:/workspace/libro_workspace/OS/Compiler/src\MxL.g4 by ANTLR 4.9.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MxLParser}.
 */
public interface MxLListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MxLParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MxLParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MxLParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#arraySpecifier}.
	 * @param ctx the parse tree
	 */
	void enterArraySpecifier(MxLParser.ArraySpecifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#arraySpecifier}.
	 * @param ctx the parse tree
	 */
	void exitArraySpecifier(MxLParser.ArraySpecifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#varType}.
	 * @param ctx the parse tree
	 */
	void enterVarType(MxLParser.VarTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#varType}.
	 * @param ctx the parse tree
	 */
	void exitVarType(MxLParser.VarTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#buildInType}.
	 * @param ctx the parse tree
	 */
	void enterBuildInType(MxLParser.BuildInTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#buildInType}.
	 * @param ctx the parse tree
	 */
	void exitBuildInType(MxLParser.BuildInTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#returnType}.
	 * @param ctx the parse tree
	 */
	void enterReturnType(MxLParser.ReturnTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#returnType}.
	 * @param ctx the parse tree
	 */
	void exitReturnType(MxLParser.ReturnTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#declaration}.
	 * @param ctx the parse tree
	 */
	void enterDeclaration(MxLParser.DeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#declaration}.
	 * @param ctx the parse tree
	 */
	void exitDeclaration(MxLParser.DeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#functionDefinition}.
	 * @param ctx the parse tree
	 */
	void enterFunctionDefinition(MxLParser.FunctionDefinitionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#functionDefinition}.
	 * @param ctx the parse tree
	 */
	void exitFunctionDefinition(MxLParser.FunctionDefinitionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#functionParameterDef}.
	 * @param ctx the parse tree
	 */
	void enterFunctionParameterDef(MxLParser.FunctionParameterDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#functionParameterDef}.
	 * @param ctx the parse tree
	 */
	void exitFunctionParameterDef(MxLParser.FunctionParameterDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#declarationStatement}.
	 * @param ctx the parse tree
	 */
	void enterDeclarationStatement(MxLParser.DeclarationStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#declarationStatement}.
	 * @param ctx the parse tree
	 */
	void exitDeclarationStatement(MxLParser.DeclarationStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#initDeclaratorList}.
	 * @param ctx the parse tree
	 */
	void enterInitDeclaratorList(MxLParser.InitDeclaratorListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#initDeclaratorList}.
	 * @param ctx the parse tree
	 */
	void exitInitDeclaratorList(MxLParser.InitDeclaratorListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#declarator}.
	 * @param ctx the parse tree
	 */
	void enterDeclarator(MxLParser.DeclaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#declarator}.
	 * @param ctx the parse tree
	 */
	void exitDeclarator(MxLParser.DeclaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(MxLParser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(MxLParser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#statementSeq}.
	 * @param ctx the parse tree
	 */
	void enterStatementSeq(MxLParser.StatementSeqContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#statementSeq}.
	 * @param ctx the parse tree
	 */
	void exitStatementSeq(MxLParser.StatementSeqContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#compoundStatement}.
	 * @param ctx the parse tree
	 */
	void enterCompoundStatement(MxLParser.CompoundStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#compoundStatement}.
	 * @param ctx the parse tree
	 */
	void exitCompoundStatement(MxLParser.CompoundStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
	void enterExpressionStatement(MxLParser.ExpressionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
	void exitExpressionStatement(MxLParser.ExpressionStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#selectionStatement}.
	 * @param ctx the parse tree
	 */
	void enterSelectionStatement(MxLParser.SelectionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#selectionStatement}.
	 * @param ctx the parse tree
	 */
	void exitSelectionStatement(MxLParser.SelectionStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void enterIterationStatement(MxLParser.IterationStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void exitIterationStatement(MxLParser.IterationStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void enterJumpStatement(MxLParser.JumpStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void exitJumpStatement(MxLParser.JumpStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#condition}.
	 * @param ctx the parse tree
	 */
	void enterCondition(MxLParser.ConditionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#condition}.
	 * @param ctx the parse tree
	 */
	void exitCondition(MxLParser.ConditionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#forInitStatement}.
	 * @param ctx the parse tree
	 */
	void enterForInitStatement(MxLParser.ForInitStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#forInitStatement}.
	 * @param ctx the parse tree
	 */
	void exitForInitStatement(MxLParser.ForInitStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#forIncrStatement}.
	 * @param ctx the parse tree
	 */
	void enterForIncrStatement(MxLParser.ForIncrStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#forIncrStatement}.
	 * @param ctx the parse tree
	 */
	void exitForIncrStatement(MxLParser.ForIncrStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#primaryExpression}.
	 * @param ctx the parse tree
	 */
	void enterPrimaryExpression(MxLParser.PrimaryExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#primaryExpression}.
	 * @param ctx the parse tree
	 */
	void exitPrimaryExpression(MxLParser.PrimaryExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#idExpression}.
	 * @param ctx the parse tree
	 */
	void enterIdExpression(MxLParser.IdExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#idExpression}.
	 * @param ctx the parse tree
	 */
	void exitIdExpression(MxLParser.IdExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#lambdaExpression}.
	 * @param ctx the parse tree
	 */
	void enterLambdaExpression(MxLParser.LambdaExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#lambdaExpression}.
	 * @param ctx the parse tree
	 */
	void exitLambdaExpression(MxLParser.LambdaExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#lambdaIntroducer}.
	 * @param ctx the parse tree
	 */
	void enterLambdaIntroducer(MxLParser.LambdaIntroducerContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#lambdaIntroducer}.
	 * @param ctx the parse tree
	 */
	void exitLambdaIntroducer(MxLParser.LambdaIntroducerContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#lambdaDeclarator}.
	 * @param ctx the parse tree
	 */
	void enterLambdaDeclarator(MxLParser.LambdaDeclaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#lambdaDeclarator}.
	 * @param ctx the parse tree
	 */
	void exitLambdaDeclarator(MxLParser.LambdaDeclaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#postfixExpression}.
	 * @param ctx the parse tree
	 */
	void enterPostfixExpression(MxLParser.PostfixExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#postfixExpression}.
	 * @param ctx the parse tree
	 */
	void exitPostfixExpression(MxLParser.PostfixExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#unaryExpression}.
	 * @param ctx the parse tree
	 */
	void enterUnaryExpression(MxLParser.UnaryExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#unaryExpression}.
	 * @param ctx the parse tree
	 */
	void exitUnaryExpression(MxLParser.UnaryExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#unaryOperator}.
	 * @param ctx the parse tree
	 */
	void enterUnaryOperator(MxLParser.UnaryOperatorContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#unaryOperator}.
	 * @param ctx the parse tree
	 */
	void exitUnaryOperator(MxLParser.UnaryOperatorContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#newExpression}.
	 * @param ctx the parse tree
	 */
	void enterNewExpression(MxLParser.NewExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#newExpression}.
	 * @param ctx the parse tree
	 */
	void exitNewExpression(MxLParser.NewExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#newArrayType}.
	 * @param ctx the parse tree
	 */
	void enterNewArrayType(MxLParser.NewArrayTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#newArrayType}.
	 * @param ctx the parse tree
	 */
	void exitNewArrayType(MxLParser.NewArrayTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#multiplicativeExpression}.
	 * @param ctx the parse tree
	 */
	void enterMultiplicativeExpression(MxLParser.MultiplicativeExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#multiplicativeExpression}.
	 * @param ctx the parse tree
	 */
	void exitMultiplicativeExpression(MxLParser.MultiplicativeExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#additiveExpression}.
	 * @param ctx the parse tree
	 */
	void enterAdditiveExpression(MxLParser.AdditiveExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#additiveExpression}.
	 * @param ctx the parse tree
	 */
	void exitAdditiveExpression(MxLParser.AdditiveExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#shiftExpression}.
	 * @param ctx the parse tree
	 */
	void enterShiftExpression(MxLParser.ShiftExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#shiftExpression}.
	 * @param ctx the parse tree
	 */
	void exitShiftExpression(MxLParser.ShiftExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#relationalExpression}.
	 * @param ctx the parse tree
	 */
	void enterRelationalExpression(MxLParser.RelationalExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#relationalExpression}.
	 * @param ctx the parse tree
	 */
	void exitRelationalExpression(MxLParser.RelationalExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#equalityExpression}.
	 * @param ctx the parse tree
	 */
	void enterEqualityExpression(MxLParser.EqualityExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#equalityExpression}.
	 * @param ctx the parse tree
	 */
	void exitEqualityExpression(MxLParser.EqualityExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#andExpression}.
	 * @param ctx the parse tree
	 */
	void enterAndExpression(MxLParser.AndExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#andExpression}.
	 * @param ctx the parse tree
	 */
	void exitAndExpression(MxLParser.AndExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#exclusiveOrExpression}.
	 * @param ctx the parse tree
	 */
	void enterExclusiveOrExpression(MxLParser.ExclusiveOrExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#exclusiveOrExpression}.
	 * @param ctx the parse tree
	 */
	void exitExclusiveOrExpression(MxLParser.ExclusiveOrExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#inclusiveOrExpression}.
	 * @param ctx the parse tree
	 */
	void enterInclusiveOrExpression(MxLParser.InclusiveOrExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#inclusiveOrExpression}.
	 * @param ctx the parse tree
	 */
	void exitInclusiveOrExpression(MxLParser.InclusiveOrExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#logicalAndExpression}.
	 * @param ctx the parse tree
	 */
	void enterLogicalAndExpression(MxLParser.LogicalAndExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#logicalAndExpression}.
	 * @param ctx the parse tree
	 */
	void exitLogicalAndExpression(MxLParser.LogicalAndExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#logicalOrExpression}.
	 * @param ctx the parse tree
	 */
	void enterLogicalOrExpression(MxLParser.LogicalOrExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#logicalOrExpression}.
	 * @param ctx the parse tree
	 */
	void exitLogicalOrExpression(MxLParser.LogicalOrExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#assignmentExpression}.
	 * @param ctx the parse tree
	 */
	void enterAssignmentExpression(MxLParser.AssignmentExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#assignmentExpression}.
	 * @param ctx the parse tree
	 */
	void exitAssignmentExpression(MxLParser.AssignmentExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#expressionList}.
	 * @param ctx the parse tree
	 */
	void enterExpressionList(MxLParser.ExpressionListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#expressionList}.
	 * @param ctx the parse tree
	 */
	void exitExpressionList(MxLParser.ExpressionListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpression(MxLParser.ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpression(MxLParser.ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#classSpecifier}.
	 * @param ctx the parse tree
	 */
	void enterClassSpecifier(MxLParser.ClassSpecifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#classSpecifier}.
	 * @param ctx the parse tree
	 */
	void exitClassSpecifier(MxLParser.ClassSpecifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#classHead}.
	 * @param ctx the parse tree
	 */
	void enterClassHead(MxLParser.ClassHeadContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#classHead}.
	 * @param ctx the parse tree
	 */
	void exitClassHead(MxLParser.ClassHeadContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#memberDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterMemberDeclaration(MxLParser.MemberDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#memberDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitMemberDeclaration(MxLParser.MemberDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#constructFunctionDefinition}.
	 * @param ctx the parse tree
	 */
	void enterConstructFunctionDefinition(MxLParser.ConstructFunctionDefinitionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#constructFunctionDefinition}.
	 * @param ctx the parse tree
	 */
	void exitConstructFunctionDefinition(MxLParser.ConstructFunctionDefinitionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#theOperator}.
	 * @param ctx the parse tree
	 */
	void enterTheOperator(MxLParser.TheOperatorContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#theOperator}.
	 * @param ctx the parse tree
	 */
	void exitTheOperator(MxLParser.TheOperatorContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLParser#literal}.
	 * @param ctx the parse tree
	 */
	void enterLiteral(MxLParser.LiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLParser#literal}.
	 * @param ctx the parse tree
	 */
	void exitLiteral(MxLParser.LiteralContext ctx);
}