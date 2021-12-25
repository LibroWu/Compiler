// Generated from D:/workspace/libro_workspace/OS/Compiler/src/Parser\MxL.g4 by ANTLR 4.9.1
package Parser;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxLParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		Mod=1, Minus=2, Plus=3, Star=4, Div=5, Greater=6, Less=7, Equal=8, NotEqual=9, 
		LessEqual=10, GreaterEqual=11, Not=12, AndAnd=13, OrOr=14, And=15, Or=16, 
		Tilde=17, Caret=18, RightShift=19, LeftShift=20, Assign=21, PlusPlus=22, 
		MinusMinus=23, Dot=24, LeftBracket=25, RightBracket=26, LeftParen=27, 
		RightParen=28, Semi=29, Comma=30, LeftBrace=31, RightBrace=32, Whitespace=33, 
		Newline=34, BlockComment=35, LineComment=36, Int=37, Bool=38, String=39, 
		Null=40, Void=41, True=42, False=43, If=44, Else=45, For=46, While=47, 
		Break=48, Continue=49, Return=50, New=51, Class=52, This=53, Arrow=54, 
		PointerLiteral=55, IntegerLiteral=56, StringLiteral=57, Identifier=58;
	public static final int
		RULE_program = 0, RULE_arraySpecifier = 1, RULE_varType = 2, RULE_buildInType = 3, 
		RULE_returnType = 4, RULE_declaration = 5, RULE_functionDefinition = 6, 
		RULE_functionParameterDef = 7, RULE_declarationStatement = 8, RULE_initDeclaratorList = 9, 
		RULE_declarator = 10, RULE_statement = 11, RULE_statementSeq = 12, RULE_compoundStatement = 13, 
		RULE_expressionStatement = 14, RULE_selectionStatement = 15, RULE_iterationStatement = 16, 
		RULE_jumpStatement = 17, RULE_condition = 18, RULE_forInitStatement = 19, 
		RULE_forIncrStatement = 20, RULE_primaryExpression = 21, RULE_idExpression = 22, 
		RULE_lambdaExpression = 23, RULE_lambdaIntroducer = 24, RULE_lambdaDeclarator = 25, 
		RULE_postfixExpression = 26, RULE_unaryExpression = 27, RULE_unaryOperator = 28, 
		RULE_newExpression = 29, RULE_newArrayType = 30, RULE_multiplicativeExpression = 31, 
		RULE_additiveExpression = 32, RULE_shiftExpression = 33, RULE_relationalExpression = 34, 
		RULE_equalityExpression = 35, RULE_andExpression = 36, RULE_exclusiveOrExpression = 37, 
		RULE_inclusiveOrExpression = 38, RULE_logicalAndExpression = 39, RULE_logicalOrExpression = 40, 
		RULE_assignmentExpression = 41, RULE_expression = 42, RULE_classSpecifier = 43, 
		RULE_classHead = 44, RULE_memberDeclaration = 45, RULE_constructFunctionDefinition = 46, 
		RULE_theEqualOp = 47, RULE_theCmpOp = 48, RULE_theShiftOp = 49, RULE_thePMOp = 50, 
		RULE_theSDMOp = 51, RULE_theOperator = 52, RULE_literal = 53;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "arraySpecifier", "varType", "buildInType", "returnType", 
			"declaration", "functionDefinition", "functionParameterDef", "declarationStatement", 
			"initDeclaratorList", "declarator", "statement", "statementSeq", "compoundStatement", 
			"expressionStatement", "selectionStatement", "iterationStatement", "jumpStatement", 
			"condition", "forInitStatement", "forIncrStatement", "primaryExpression", 
			"idExpression", "lambdaExpression", "lambdaIntroducer", "lambdaDeclarator", 
			"postfixExpression", "unaryExpression", "unaryOperator", "newExpression", 
			"newArrayType", "multiplicativeExpression", "additiveExpression", "shiftExpression", 
			"relationalExpression", "equalityExpression", "andExpression", "exclusiveOrExpression", 
			"inclusiveOrExpression", "logicalAndExpression", "logicalOrExpression", 
			"assignmentExpression", "expression", "classSpecifier", "classHead", 
			"memberDeclaration", "constructFunctionDefinition", "theEqualOp", "theCmpOp", 
			"theShiftOp", "thePMOp", "theSDMOp", "theOperator", "literal"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'%'", "'-'", "'+'", "'*'", "'/'", "'>'", "'<'", "'=='", "'!='", 
			"'<='", "'>='", null, null, null, "'&'", "'|'", "'~'", "'^'", "'>>'", 
			"'<<'", "'='", "'++'", "'--'", "'.'", "'['", "']'", "'('", "')'", "';'", 
			"','", "'{'", "'}'", null, null, null, null, "'int'", "'bool'", "'string'", 
			"'null'", "'void'", "'true'", "'false'", "'if'", "'else'", "'for'", "'while'", 
			"'break'", "'continue'", "'return'", "'new'", "'class'", "'this'", "'->'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "Mod", "Minus", "Plus", "Star", "Div", "Greater", "Less", "Equal", 
			"NotEqual", "LessEqual", "GreaterEqual", "Not", "AndAnd", "OrOr", "And", 
			"Or", "Tilde", "Caret", "RightShift", "LeftShift", "Assign", "PlusPlus", 
			"MinusMinus", "Dot", "LeftBracket", "RightBracket", "LeftParen", "RightParen", 
			"Semi", "Comma", "LeftBrace", "RightBrace", "Whitespace", "Newline", 
			"BlockComment", "LineComment", "Int", "Bool", "String", "Null", "Void", 
			"True", "False", "If", "Else", "For", "While", "Break", "Continue", "Return", 
			"New", "Class", "This", "Arrow", "PointerLiteral", "IntegerLiteral", 
			"StringLiteral", "Identifier"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "MxL.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MxLParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(MxLParser.EOF, 0); }
		public List<DeclarationContext> declaration() {
			return getRuleContexts(DeclarationContext.class);
		}
		public DeclarationContext declaration(int i) {
			return getRuleContext(DeclarationContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitProgram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitProgram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(111);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Void) | (1L << Class) | (1L << Identifier))) != 0)) {
				{
				{
				setState(108);
				declaration();
				}
				}
				setState(113);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(114);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ArraySpecifierContext extends ParserRuleContext {
		public BuildInTypeContext buildInType() {
			return getRuleContext(BuildInTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxLParser.Identifier, 0); }
		public List<TerminalNode> LeftBracket() { return getTokens(MxLParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxLParser.LeftBracket, i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxLParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxLParser.RightBracket, i);
		}
		public ArraySpecifierContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arraySpecifier; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterArraySpecifier(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitArraySpecifier(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitArraySpecifier(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ArraySpecifierContext arraySpecifier() throws RecognitionException {
		ArraySpecifierContext _localctx = new ArraySpecifierContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_arraySpecifier);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(118);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Int:
			case Bool:
			case String:
				{
				setState(116);
				buildInType();
				}
				break;
			case Identifier:
				{
				setState(117);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(122); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(120);
				match(LeftBracket);
				setState(121);
				match(RightBracket);
				}
				}
				setState(124); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==LeftBracket );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarTypeContext extends ParserRuleContext {
		public BuildInTypeContext buildInType() {
			return getRuleContext(BuildInTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxLParser.Identifier, 0); }
		public ClassSpecifierContext classSpecifier() {
			return getRuleContext(ClassSpecifierContext.class,0);
		}
		public ArraySpecifierContext arraySpecifier() {
			return getRuleContext(ArraySpecifierContext.class,0);
		}
		public VarTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterVarType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitVarType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitVarType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarTypeContext varType() throws RecognitionException {
		VarTypeContext _localctx = new VarTypeContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_varType);
		try {
			setState(130);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(126);
				buildInType();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(127);
				match(Identifier);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(128);
				classSpecifier();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(129);
				arraySpecifier();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BuildInTypeContext extends ParserRuleContext {
		public TerminalNode Bool() { return getToken(MxLParser.Bool, 0); }
		public TerminalNode Int() { return getToken(MxLParser.Int, 0); }
		public TerminalNode String() { return getToken(MxLParser.String, 0); }
		public BuildInTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_buildInType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterBuildInType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitBuildInType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitBuildInType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BuildInTypeContext buildInType() throws RecognitionException {
		BuildInTypeContext _localctx = new BuildInTypeContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_buildInType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(132);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ReturnTypeContext extends ParserRuleContext {
		public TerminalNode Void() { return getToken(MxLParser.Void, 0); }
		public BuildInTypeContext buildInType() {
			return getRuleContext(BuildInTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxLParser.Identifier, 0); }
		public ArraySpecifierContext arraySpecifier() {
			return getRuleContext(ArraySpecifierContext.class,0);
		}
		public ReturnTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_returnType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterReturnType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitReturnType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitReturnType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ReturnTypeContext returnType() throws RecognitionException {
		ReturnTypeContext _localctx = new ReturnTypeContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_returnType);
		try {
			setState(138);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(134);
				match(Void);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(135);
				buildInType();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(136);
				match(Identifier);
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(137);
				arraySpecifier();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DeclarationContext extends ParserRuleContext {
		public DeclarationStatementContext declarationStatement() {
			return getRuleContext(DeclarationStatementContext.class,0);
		}
		public FunctionDefinitionContext functionDefinition() {
			return getRuleContext(FunctionDefinitionContext.class,0);
		}
		public DeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitDeclaration(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitDeclaration(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DeclarationContext declaration() throws RecognitionException {
		DeclarationContext _localctx = new DeclarationContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_declaration);
		try {
			setState(142);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(140);
				declarationStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(141);
				functionDefinition();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionDefinitionContext extends ParserRuleContext {
		public ReturnTypeContext returnType() {
			return getRuleContext(ReturnTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxLParser.Identifier, 0); }
		public TerminalNode LeftParen() { return getToken(MxLParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxLParser.RightParen, 0); }
		public CompoundStatementContext compoundStatement() {
			return getRuleContext(CompoundStatementContext.class,0);
		}
		public FunctionParameterDefContext functionParameterDef() {
			return getRuleContext(FunctionParameterDefContext.class,0);
		}
		public FunctionDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionDefinition; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterFunctionDefinition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitFunctionDefinition(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitFunctionDefinition(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionDefinitionContext functionDefinition() throws RecognitionException {
		FunctionDefinitionContext _localctx = new FunctionDefinitionContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_functionDefinition);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(144);
			returnType();
			setState(145);
			match(Identifier);
			setState(146);
			match(LeftParen);
			setState(148);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Class) | (1L << Identifier))) != 0)) {
				{
				setState(147);
				functionParameterDef();
				}
			}

			setState(150);
			match(RightParen);
			setState(151);
			compoundStatement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionParameterDefContext extends ParserRuleContext {
		public List<VarTypeContext> varType() {
			return getRuleContexts(VarTypeContext.class);
		}
		public VarTypeContext varType(int i) {
			return getRuleContext(VarTypeContext.class,i);
		}
		public List<TerminalNode> Identifier() { return getTokens(MxLParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(MxLParser.Identifier, i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxLParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxLParser.Comma, i);
		}
		public FunctionParameterDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionParameterDef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterFunctionParameterDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitFunctionParameterDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitFunctionParameterDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionParameterDefContext functionParameterDef() throws RecognitionException {
		FunctionParameterDefContext _localctx = new FunctionParameterDefContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_functionParameterDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(153);
			varType();
			setState(154);
			match(Identifier);
			setState(161);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(155);
				match(Comma);
				setState(156);
				varType();
				setState(157);
				match(Identifier);
				}
				}
				setState(163);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DeclarationStatementContext extends ParserRuleContext {
		public VarTypeContext varType() {
			return getRuleContext(VarTypeContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxLParser.Semi, 0); }
		public InitDeclaratorListContext initDeclaratorList() {
			return getRuleContext(InitDeclaratorListContext.class,0);
		}
		public DeclarationStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declarationStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterDeclarationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitDeclarationStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitDeclarationStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DeclarationStatementContext declarationStatement() throws RecognitionException {
		DeclarationStatementContext _localctx = new DeclarationStatementContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_declarationStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(164);
			varType();
			setState(166);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Identifier) {
				{
				setState(165);
				initDeclaratorList();
				}
			}

			setState(168);
			match(Semi);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class InitDeclaratorListContext extends ParserRuleContext {
		public List<DeclaratorContext> declarator() {
			return getRuleContexts(DeclaratorContext.class);
		}
		public DeclaratorContext declarator(int i) {
			return getRuleContext(DeclaratorContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxLParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxLParser.Comma, i);
		}
		public InitDeclaratorListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_initDeclaratorList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterInitDeclaratorList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitInitDeclaratorList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitInitDeclaratorList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final InitDeclaratorListContext initDeclaratorList() throws RecognitionException {
		InitDeclaratorListContext _localctx = new InitDeclaratorListContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_initDeclaratorList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(170);
			declarator();
			setState(175);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(171);
				match(Comma);
				setState(172);
				declarator();
				}
				}
				setState(177);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DeclaratorContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxLParser.Identifier, 0); }
		public TerminalNode Assign() { return getToken(MxLParser.Assign, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public DeclaratorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declarator; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterDeclarator(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitDeclarator(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitDeclarator(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DeclaratorContext declarator() throws RecognitionException {
		DeclaratorContext _localctx = new DeclaratorContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_declarator);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(178);
			match(Identifier);
			setState(181);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Assign) {
				{
				setState(179);
				match(Assign);
				setState(180);
				expression();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public DeclarationStatementContext declarationStatement() {
			return getRuleContext(DeclarationStatementContext.class,0);
		}
		public ExpressionStatementContext expressionStatement() {
			return getRuleContext(ExpressionStatementContext.class,0);
		}
		public CompoundStatementContext compoundStatement() {
			return getRuleContext(CompoundStatementContext.class,0);
		}
		public SelectionStatementContext selectionStatement() {
			return getRuleContext(SelectionStatementContext.class,0);
		}
		public IterationStatementContext iterationStatement() {
			return getRuleContext(IterationStatementContext.class,0);
		}
		public JumpStatementContext jumpStatement() {
			return getRuleContext(JumpStatementContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxLParser.Semi, 0); }
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_statement);
		try {
			setState(190);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(183);
				declarationStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(184);
				expressionStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(185);
				compoundStatement();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(186);
				selectionStatement();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(187);
				iterationStatement();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(188);
				jumpStatement();
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(189);
				match(Semi);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementSeqContext extends ParserRuleContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public StatementSeqContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statementSeq; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterStatementSeq(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitStatementSeq(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitStatementSeq(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StatementSeqContext statementSeq() throws RecognitionException {
		StatementSeqContext _localctx = new StatementSeqContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_statementSeq);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(193); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(192);
				statement();
				}
				}
				setState(195); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Semi) | (1L << LeftBrace) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << Null) | (1L << True) | (1L << False) | (1L << If) | (1L << For) | (1L << While) | (1L << Break) | (1L << Continue) | (1L << Return) | (1L << New) | (1L << Class) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0) );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CompoundStatementContext extends ParserRuleContext {
		public TerminalNode LeftBrace() { return getToken(MxLParser.LeftBrace, 0); }
		public TerminalNode RightBrace() { return getToken(MxLParser.RightBrace, 0); }
		public StatementSeqContext statementSeq() {
			return getRuleContext(StatementSeqContext.class,0);
		}
		public CompoundStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_compoundStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterCompoundStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitCompoundStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitCompoundStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CompoundStatementContext compoundStatement() throws RecognitionException {
		CompoundStatementContext _localctx = new CompoundStatementContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_compoundStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(197);
			match(LeftBrace);
			setState(199);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Semi) | (1L << LeftBrace) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << Null) | (1L << True) | (1L << False) | (1L << If) | (1L << For) | (1L << While) | (1L << Break) | (1L << Continue) | (1L << Return) | (1L << New) | (1L << Class) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0)) {
				{
				setState(198);
				statementSeq();
				}
			}

			setState(201);
			match(RightBrace);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxLParser.Semi, 0); }
		public ExpressionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expressionStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterExpressionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitExpressionStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitExpressionStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionStatementContext expressionStatement() throws RecognitionException {
		ExpressionStatementContext _localctx = new ExpressionStatementContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_expressionStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(203);
			expression();
			setState(204);
			match(Semi);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SelectionStatementContext extends ParserRuleContext {
		public StatementContext trueStatement;
		public StatementContext falseStatement;
		public TerminalNode If() { return getToken(MxLParser.If, 0); }
		public TerminalNode LeftParen() { return getToken(MxLParser.LeftParen, 0); }
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxLParser.RightParen, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public TerminalNode Else() { return getToken(MxLParser.Else, 0); }
		public SelectionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_selectionStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterSelectionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitSelectionStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitSelectionStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SelectionStatementContext selectionStatement() throws RecognitionException {
		SelectionStatementContext _localctx = new SelectionStatementContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_selectionStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(206);
			match(If);
			setState(207);
			match(LeftParen);
			setState(208);
			condition();
			setState(209);
			match(RightParen);
			setState(210);
			((SelectionStatementContext)_localctx).trueStatement = statement();
			setState(213);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
			case 1:
				{
				setState(211);
				match(Else);
				setState(212);
				((SelectionStatementContext)_localctx).falseStatement = statement();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IterationStatementContext extends ParserRuleContext {
		public TerminalNode While() { return getToken(MxLParser.While, 0); }
		public TerminalNode LeftParen() { return getToken(MxLParser.LeftParen, 0); }
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxLParser.RightParen, 0); }
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public TerminalNode For() { return getToken(MxLParser.For, 0); }
		public ForInitStatementContext forInitStatement() {
			return getRuleContext(ForInitStatementContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxLParser.Semi, 0); }
		public ForIncrStatementContext forIncrStatement() {
			return getRuleContext(ForIncrStatementContext.class,0);
		}
		public IterationStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_iterationStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterIterationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitIterationStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitIterationStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final IterationStatementContext iterationStatement() throws RecognitionException {
		IterationStatementContext _localctx = new IterationStatementContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_iterationStatement);
		int _la;
		try {
			setState(234);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case While:
				enterOuterAlt(_localctx, 1);
				{
				setState(215);
				match(While);
				setState(216);
				match(LeftParen);
				setState(217);
				condition();
				setState(218);
				match(RightParen);
				setState(219);
				statement();
				}
				break;
			case For:
				enterOuterAlt(_localctx, 2);
				{
				setState(221);
				match(For);
				setState(222);
				match(LeftParen);
				setState(223);
				forInitStatement();
				setState(225);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0)) {
					{
					setState(224);
					condition();
					}
				}

				setState(227);
				match(Semi);
				setState(229);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0)) {
					{
					setState(228);
					forIncrStatement();
					}
				}

				setState(231);
				match(RightParen);
				setState(232);
				statement();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class JumpStatementContext extends ParserRuleContext {
		public TerminalNode Semi() { return getToken(MxLParser.Semi, 0); }
		public TerminalNode Return() { return getToken(MxLParser.Return, 0); }
		public TerminalNode Break() { return getToken(MxLParser.Break, 0); }
		public TerminalNode Continue() { return getToken(MxLParser.Continue, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public JumpStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_jumpStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterJumpStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitJumpStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitJumpStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final JumpStatementContext jumpStatement() throws RecognitionException {
		JumpStatementContext _localctx = new JumpStatementContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_jumpStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(242);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Return:
				{
				setState(236);
				match(Return);
				setState(238);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0)) {
					{
					setState(237);
					expression();
					}
				}

				}
				break;
			case Break:
				{
				setState(240);
				match(Break);
				}
				break;
			case Continue:
				{
				setState(241);
				match(Continue);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(244);
			match(Semi);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConditionContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ConditionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_condition; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterCondition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitCondition(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitCondition(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ConditionContext condition() throws RecognitionException {
		ConditionContext _localctx = new ConditionContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_condition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(246);
			expression();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForInitStatementContext extends ParserRuleContext {
		public ExpressionStatementContext expressionStatement() {
			return getRuleContext(ExpressionStatementContext.class,0);
		}
		public DeclarationStatementContext declarationStatement() {
			return getRuleContext(DeclarationStatementContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxLParser.Semi, 0); }
		public ForInitStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forInitStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterForInitStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitForInitStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitForInitStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForInitStatementContext forInitStatement() throws RecognitionException {
		ForInitStatementContext _localctx = new ForInitStatementContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_forInitStatement);
		try {
			setState(251);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,20,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(248);
				expressionStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(249);
				declarationStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(250);
				match(Semi);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForIncrStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ForIncrStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forIncrStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterForIncrStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitForIncrStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitForIncrStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForIncrStatementContext forIncrStatement() throws RecognitionException {
		ForIncrStatementContext _localctx = new ForIncrStatementContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_forIncrStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(253);
			expression();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PrimaryExpressionContext extends ParserRuleContext {
		public LiteralContext literal() {
			return getRuleContext(LiteralContext.class,0);
		}
		public TerminalNode This() { return getToken(MxLParser.This, 0); }
		public TerminalNode LeftParen() { return getToken(MxLParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxLParser.RightParen, 0); }
		public IdExpressionContext idExpression() {
			return getRuleContext(IdExpressionContext.class,0);
		}
		public LambdaExpressionContext lambdaExpression() {
			return getRuleContext(LambdaExpressionContext.class,0);
		}
		public PrimaryExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_primaryExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterPrimaryExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitPrimaryExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitPrimaryExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PrimaryExpressionContext primaryExpression() throws RecognitionException {
		PrimaryExpressionContext _localctx = new PrimaryExpressionContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_primaryExpression);
		try {
			setState(263);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Null:
			case True:
			case False:
			case IntegerLiteral:
			case StringLiteral:
				enterOuterAlt(_localctx, 1);
				{
				setState(255);
				literal();
				}
				break;
			case This:
				enterOuterAlt(_localctx, 2);
				{
				setState(256);
				match(This);
				}
				break;
			case LeftParen:
				enterOuterAlt(_localctx, 3);
				{
				setState(257);
				match(LeftParen);
				setState(258);
				expression();
				setState(259);
				match(RightParen);
				}
				break;
			case Identifier:
				enterOuterAlt(_localctx, 4);
				{
				setState(261);
				idExpression();
				}
				break;
			case LeftBracket:
				enterOuterAlt(_localctx, 5);
				{
				setState(262);
				lambdaExpression();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IdExpressionContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxLParser.Identifier, 0); }
		public IdExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_idExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterIdExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitIdExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitIdExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final IdExpressionContext idExpression() throws RecognitionException {
		IdExpressionContext _localctx = new IdExpressionContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_idExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(265);
			match(Identifier);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LambdaExpressionContext extends ParserRuleContext {
		public LambdaIntroducerContext lambdaIntroducer() {
			return getRuleContext(LambdaIntroducerContext.class,0);
		}
		public LambdaDeclaratorContext lambdaDeclarator() {
			return getRuleContext(LambdaDeclaratorContext.class,0);
		}
		public TerminalNode Arrow() { return getToken(MxLParser.Arrow, 0); }
		public CompoundStatementContext compoundStatement() {
			return getRuleContext(CompoundStatementContext.class,0);
		}
		public LambdaExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lambdaExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterLambdaExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitLambdaExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitLambdaExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LambdaExpressionContext lambdaExpression() throws RecognitionException {
		LambdaExpressionContext _localctx = new LambdaExpressionContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_lambdaExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(267);
			lambdaIntroducer();
			setState(268);
			lambdaDeclarator();
			setState(269);
			match(Arrow);
			setState(270);
			compoundStatement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LambdaIntroducerContext extends ParserRuleContext {
		public TerminalNode LeftBracket() { return getToken(MxLParser.LeftBracket, 0); }
		public TerminalNode And() { return getToken(MxLParser.And, 0); }
		public TerminalNode RightBracket() { return getToken(MxLParser.RightBracket, 0); }
		public LambdaIntroducerContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lambdaIntroducer; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterLambdaIntroducer(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitLambdaIntroducer(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitLambdaIntroducer(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LambdaIntroducerContext lambdaIntroducer() throws RecognitionException {
		LambdaIntroducerContext _localctx = new LambdaIntroducerContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_lambdaIntroducer);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(272);
			match(LeftBracket);
			setState(273);
			match(And);
			setState(274);
			match(RightBracket);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LambdaDeclaratorContext extends ParserRuleContext {
		public TerminalNode LeftParen() { return getToken(MxLParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxLParser.RightParen, 0); }
		public FunctionParameterDefContext functionParameterDef() {
			return getRuleContext(FunctionParameterDefContext.class,0);
		}
		public LambdaDeclaratorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lambdaDeclarator; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterLambdaDeclarator(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitLambdaDeclarator(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitLambdaDeclarator(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LambdaDeclaratorContext lambdaDeclarator() throws RecognitionException {
		LambdaDeclaratorContext _localctx = new LambdaDeclaratorContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_lambdaDeclarator);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(281);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LeftParen) {
				{
				setState(276);
				match(LeftParen);
				setState(278);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Class) | (1L << Identifier))) != 0)) {
					{
					setState(277);
					functionParameterDef();
					}
				}

				setState(280);
				match(RightParen);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PostfixExpressionContext extends ParserRuleContext {
		public PrimaryExpressionContext primaryExpression() {
			return getRuleContext(PrimaryExpressionContext.class,0);
		}
		public PostfixExpressionContext postfixExpression() {
			return getRuleContext(PostfixExpressionContext.class,0);
		}
		public TerminalNode LeftParen() { return getToken(MxLParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxLParser.RightParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode LeftBracket() { return getToken(MxLParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxLParser.RightBracket, 0); }
		public TerminalNode Dot() { return getToken(MxLParser.Dot, 0); }
		public IdExpressionContext idExpression() {
			return getRuleContext(IdExpressionContext.class,0);
		}
		public TerminalNode PlusPlus() { return getToken(MxLParser.PlusPlus, 0); }
		public TerminalNode MinusMinus() { return getToken(MxLParser.MinusMinus, 0); }
		public PostfixExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_postfixExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterPostfixExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitPostfixExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitPostfixExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PostfixExpressionContext postfixExpression() throws RecognitionException {
		return postfixExpression(0);
	}

	private PostfixExpressionContext postfixExpression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		PostfixExpressionContext _localctx = new PostfixExpressionContext(_ctx, _parentState);
		PostfixExpressionContext _prevctx = _localctx;
		int _startState = 52;
		enterRecursionRule(_localctx, 52, RULE_postfixExpression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(284);
			primaryExpression();
			}
			_ctx.stop = _input.LT(-1);
			setState(304);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(302);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,25,_ctx) ) {
					case 1:
						{
						_localctx = new PostfixExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_postfixExpression);
						setState(286);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(287);
						match(LeftParen);
						setState(289);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0)) {
							{
							setState(288);
							expression();
							}
						}

						setState(291);
						match(RightParen);
						}
						break;
					case 2:
						{
						_localctx = new PostfixExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_postfixExpression);
						setState(292);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(293);
						match(LeftBracket);
						setState(294);
						expression();
						setState(295);
						match(RightBracket);
						}
						break;
					case 3:
						{
						_localctx = new PostfixExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_postfixExpression);
						setState(297);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(298);
						match(Dot);
						setState(299);
						idExpression();
						}
						break;
					case 4:
						{
						_localctx = new PostfixExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_postfixExpression);
						setState(300);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(301);
						_la = _input.LA(1);
						if ( !(_la==PlusPlus || _la==MinusMinus) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					}
					} 
				}
				setState(306);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class UnaryExpressionContext extends ParserRuleContext {
		public PostfixExpressionContext postfixExpression() {
			return getRuleContext(PostfixExpressionContext.class,0);
		}
		public UnaryExpressionContext unaryExpression() {
			return getRuleContext(UnaryExpressionContext.class,0);
		}
		public TerminalNode PlusPlus() { return getToken(MxLParser.PlusPlus, 0); }
		public TerminalNode MinusMinus() { return getToken(MxLParser.MinusMinus, 0); }
		public UnaryOperatorContext unaryOperator() {
			return getRuleContext(UnaryOperatorContext.class,0);
		}
		public NewExpressionContext newExpression() {
			return getRuleContext(NewExpressionContext.class,0);
		}
		public UnaryExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_unaryExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterUnaryExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitUnaryExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitUnaryExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final UnaryExpressionContext unaryExpression() throws RecognitionException {
		UnaryExpressionContext _localctx = new UnaryExpressionContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_unaryExpression);
		try {
			setState(315);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case LeftBracket:
			case LeftParen:
			case Null:
			case True:
			case False:
			case This:
			case IntegerLiteral:
			case StringLiteral:
			case Identifier:
				enterOuterAlt(_localctx, 1);
				{
				setState(307);
				postfixExpression(0);
				}
				break;
			case Minus:
			case Plus:
			case Star:
			case Not:
			case And:
			case Or:
			case Tilde:
			case PlusPlus:
			case MinusMinus:
				enterOuterAlt(_localctx, 2);
				{
				setState(311);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case PlusPlus:
					{
					setState(308);
					match(PlusPlus);
					}
					break;
				case MinusMinus:
					{
					setState(309);
					match(MinusMinus);
					}
					break;
				case Minus:
				case Plus:
				case Star:
				case Not:
				case And:
				case Or:
				case Tilde:
					{
					setState(310);
					unaryOperator();
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(313);
				unaryExpression();
				}
				break;
			case New:
				enterOuterAlt(_localctx, 3);
				{
				setState(314);
				newExpression();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class UnaryOperatorContext extends ParserRuleContext {
		public TerminalNode Or() { return getToken(MxLParser.Or, 0); }
		public TerminalNode Star() { return getToken(MxLParser.Star, 0); }
		public TerminalNode And() { return getToken(MxLParser.And, 0); }
		public TerminalNode Plus() { return getToken(MxLParser.Plus, 0); }
		public TerminalNode Tilde() { return getToken(MxLParser.Tilde, 0); }
		public TerminalNode Minus() { return getToken(MxLParser.Minus, 0); }
		public TerminalNode Not() { return getToken(MxLParser.Not, 0); }
		public UnaryOperatorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_unaryOperator; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterUnaryOperator(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitUnaryOperator(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitUnaryOperator(this);
			else return visitor.visitChildren(this);
		}
	}

	public final UnaryOperatorContext unaryOperator() throws RecognitionException {
		UnaryOperatorContext _localctx = new UnaryOperatorContext(_ctx, getState());
		enterRule(_localctx, 56, RULE_unaryOperator);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(317);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NewExpressionContext extends ParserRuleContext {
		public TerminalNode New() { return getToken(MxLParser.New, 0); }
		public BuildInTypeContext buildInType() {
			return getRuleContext(BuildInTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxLParser.Identifier, 0); }
		public NewArrayTypeContext newArrayType() {
			return getRuleContext(NewArrayTypeContext.class,0);
		}
		public TerminalNode LeftParen() { return getToken(MxLParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxLParser.RightParen, 0); }
		public NewExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_newExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterNewExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitNewExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitNewExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final NewExpressionContext newExpression() throws RecognitionException {
		NewExpressionContext _localctx = new NewExpressionContext(_ctx, getState());
		enterRule(_localctx, 58, RULE_newExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(319);
			match(New);
			setState(323);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,29,_ctx) ) {
			case 1:
				{
				setState(320);
				buildInType();
				}
				break;
			case 2:
				{
				setState(321);
				match(Identifier);
				}
				break;
			case 3:
				{
				setState(322);
				newArrayType();
				}
				break;
			}
			setState(327);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LeftParen) {
				{
				setState(325);
				match(LeftParen);
				setState(326);
				match(RightParen);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NewArrayTypeContext extends ParserRuleContext {
		public BuildInTypeContext buildInType() {
			return getRuleContext(BuildInTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxLParser.Identifier, 0); }
		public List<TerminalNode> LeftBracket() { return getTokens(MxLParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxLParser.LeftBracket, i);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxLParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxLParser.RightBracket, i);
		}
		public NewArrayTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_newArrayType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterNewArrayType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitNewArrayType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitNewArrayType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final NewArrayTypeContext newArrayType() throws RecognitionException {
		NewArrayTypeContext _localctx = new NewArrayTypeContext(_ctx, getState());
		enterRule(_localctx, 60, RULE_newArrayType);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(331);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Int:
			case Bool:
			case String:
				{
				setState(329);
				buildInType();
				}
				break;
			case Identifier:
				{
				setState(330);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(337); 
			_errHandler.sync(this);
			_alt = 1;
			do {
				switch (_alt) {
				case 1:
					{
					{
					setState(333);
					match(LeftBracket);
					setState(334);
					expression();
					setState(335);
					match(RightBracket);
					}
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(339); 
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,32,_ctx);
			} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
			setState(345);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==LeftBracket) {
				{
				{
				setState(341);
				match(LeftBracket);
				setState(342);
				match(RightBracket);
				}
				}
				setState(347);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MultiplicativeExpressionContext extends ParserRuleContext {
		public List<UnaryExpressionContext> unaryExpression() {
			return getRuleContexts(UnaryExpressionContext.class);
		}
		public UnaryExpressionContext unaryExpression(int i) {
			return getRuleContext(UnaryExpressionContext.class,i);
		}
		public List<TheSDMOpContext> theSDMOp() {
			return getRuleContexts(TheSDMOpContext.class);
		}
		public TheSDMOpContext theSDMOp(int i) {
			return getRuleContext(TheSDMOpContext.class,i);
		}
		public MultiplicativeExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_multiplicativeExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterMultiplicativeExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitMultiplicativeExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitMultiplicativeExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final MultiplicativeExpressionContext multiplicativeExpression() throws RecognitionException {
		MultiplicativeExpressionContext _localctx = new MultiplicativeExpressionContext(_ctx, getState());
		enterRule(_localctx, 62, RULE_multiplicativeExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(348);
			unaryExpression();
			setState(354);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Mod) | (1L << Star) | (1L << Div))) != 0)) {
				{
				{
				setState(349);
				theSDMOp();
				setState(350);
				unaryExpression();
				}
				}
				setState(356);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AdditiveExpressionContext extends ParserRuleContext {
		public List<MultiplicativeExpressionContext> multiplicativeExpression() {
			return getRuleContexts(MultiplicativeExpressionContext.class);
		}
		public MultiplicativeExpressionContext multiplicativeExpression(int i) {
			return getRuleContext(MultiplicativeExpressionContext.class,i);
		}
		public List<ThePMOpContext> thePMOp() {
			return getRuleContexts(ThePMOpContext.class);
		}
		public ThePMOpContext thePMOp(int i) {
			return getRuleContext(ThePMOpContext.class,i);
		}
		public AdditiveExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_additiveExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterAdditiveExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitAdditiveExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitAdditiveExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AdditiveExpressionContext additiveExpression() throws RecognitionException {
		AdditiveExpressionContext _localctx = new AdditiveExpressionContext(_ctx, getState());
		enterRule(_localctx, 64, RULE_additiveExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(357);
			multiplicativeExpression();
			setState(363);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Minus || _la==Plus) {
				{
				{
				setState(358);
				thePMOp();
				setState(359);
				multiplicativeExpression();
				}
				}
				setState(365);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ShiftExpressionContext extends ParserRuleContext {
		public List<AdditiveExpressionContext> additiveExpression() {
			return getRuleContexts(AdditiveExpressionContext.class);
		}
		public AdditiveExpressionContext additiveExpression(int i) {
			return getRuleContext(AdditiveExpressionContext.class,i);
		}
		public List<TheShiftOpContext> theShiftOp() {
			return getRuleContexts(TheShiftOpContext.class);
		}
		public TheShiftOpContext theShiftOp(int i) {
			return getRuleContext(TheShiftOpContext.class,i);
		}
		public ShiftExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_shiftExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterShiftExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitShiftExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitShiftExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ShiftExpressionContext shiftExpression() throws RecognitionException {
		ShiftExpressionContext _localctx = new ShiftExpressionContext(_ctx, getState());
		enterRule(_localctx, 66, RULE_shiftExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(366);
			additiveExpression();
			setState(372);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==RightShift || _la==LeftShift) {
				{
				{
				setState(367);
				theShiftOp();
				setState(368);
				additiveExpression();
				}
				}
				setState(374);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class RelationalExpressionContext extends ParserRuleContext {
		public List<ShiftExpressionContext> shiftExpression() {
			return getRuleContexts(ShiftExpressionContext.class);
		}
		public ShiftExpressionContext shiftExpression(int i) {
			return getRuleContext(ShiftExpressionContext.class,i);
		}
		public List<TheCmpOpContext> theCmpOp() {
			return getRuleContexts(TheCmpOpContext.class);
		}
		public TheCmpOpContext theCmpOp(int i) {
			return getRuleContext(TheCmpOpContext.class,i);
		}
		public RelationalExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_relationalExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterRelationalExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitRelationalExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitRelationalExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final RelationalExpressionContext relationalExpression() throws RecognitionException {
		RelationalExpressionContext _localctx = new RelationalExpressionContext(_ctx, getState());
		enterRule(_localctx, 68, RULE_relationalExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(375);
			shiftExpression();
			setState(381);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Greater) | (1L << Less) | (1L << LessEqual) | (1L << GreaterEqual))) != 0)) {
				{
				{
				setState(376);
				theCmpOp();
				setState(377);
				shiftExpression();
				}
				}
				setState(383);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class EqualityExpressionContext extends ParserRuleContext {
		public List<RelationalExpressionContext> relationalExpression() {
			return getRuleContexts(RelationalExpressionContext.class);
		}
		public RelationalExpressionContext relationalExpression(int i) {
			return getRuleContext(RelationalExpressionContext.class,i);
		}
		public List<TheEqualOpContext> theEqualOp() {
			return getRuleContexts(TheEqualOpContext.class);
		}
		public TheEqualOpContext theEqualOp(int i) {
			return getRuleContext(TheEqualOpContext.class,i);
		}
		public EqualityExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_equalityExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterEqualityExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitEqualityExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitEqualityExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final EqualityExpressionContext equalityExpression() throws RecognitionException {
		EqualityExpressionContext _localctx = new EqualityExpressionContext(_ctx, getState());
		enterRule(_localctx, 70, RULE_equalityExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(384);
			relationalExpression();
			setState(390);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Equal || _la==NotEqual) {
				{
				{
				setState(385);
				theEqualOp();
				setState(386);
				relationalExpression();
				}
				}
				setState(392);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AndExpressionContext extends ParserRuleContext {
		public List<EqualityExpressionContext> equalityExpression() {
			return getRuleContexts(EqualityExpressionContext.class);
		}
		public EqualityExpressionContext equalityExpression(int i) {
			return getRuleContext(EqualityExpressionContext.class,i);
		}
		public List<TerminalNode> And() { return getTokens(MxLParser.And); }
		public TerminalNode And(int i) {
			return getToken(MxLParser.And, i);
		}
		public AndExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_andExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterAndExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitAndExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitAndExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AndExpressionContext andExpression() throws RecognitionException {
		AndExpressionContext _localctx = new AndExpressionContext(_ctx, getState());
		enterRule(_localctx, 72, RULE_andExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(393);
			equalityExpression();
			setState(398);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==And) {
				{
				{
				setState(394);
				match(And);
				setState(395);
				equalityExpression();
				}
				}
				setState(400);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExclusiveOrExpressionContext extends ParserRuleContext {
		public List<AndExpressionContext> andExpression() {
			return getRuleContexts(AndExpressionContext.class);
		}
		public AndExpressionContext andExpression(int i) {
			return getRuleContext(AndExpressionContext.class,i);
		}
		public List<TerminalNode> Caret() { return getTokens(MxLParser.Caret); }
		public TerminalNode Caret(int i) {
			return getToken(MxLParser.Caret, i);
		}
		public ExclusiveOrExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exclusiveOrExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterExclusiveOrExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitExclusiveOrExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitExclusiveOrExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExclusiveOrExpressionContext exclusiveOrExpression() throws RecognitionException {
		ExclusiveOrExpressionContext _localctx = new ExclusiveOrExpressionContext(_ctx, getState());
		enterRule(_localctx, 74, RULE_exclusiveOrExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(401);
			andExpression();
			setState(406);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Caret) {
				{
				{
				setState(402);
				match(Caret);
				setState(403);
				andExpression();
				}
				}
				setState(408);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class InclusiveOrExpressionContext extends ParserRuleContext {
		public List<ExclusiveOrExpressionContext> exclusiveOrExpression() {
			return getRuleContexts(ExclusiveOrExpressionContext.class);
		}
		public ExclusiveOrExpressionContext exclusiveOrExpression(int i) {
			return getRuleContext(ExclusiveOrExpressionContext.class,i);
		}
		public List<TerminalNode> Or() { return getTokens(MxLParser.Or); }
		public TerminalNode Or(int i) {
			return getToken(MxLParser.Or, i);
		}
		public InclusiveOrExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_inclusiveOrExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterInclusiveOrExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitInclusiveOrExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitInclusiveOrExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final InclusiveOrExpressionContext inclusiveOrExpression() throws RecognitionException {
		InclusiveOrExpressionContext _localctx = new InclusiveOrExpressionContext(_ctx, getState());
		enterRule(_localctx, 76, RULE_inclusiveOrExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(409);
			exclusiveOrExpression();
			setState(414);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Or) {
				{
				{
				setState(410);
				match(Or);
				setState(411);
				exclusiveOrExpression();
				}
				}
				setState(416);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LogicalAndExpressionContext extends ParserRuleContext {
		public List<InclusiveOrExpressionContext> inclusiveOrExpression() {
			return getRuleContexts(InclusiveOrExpressionContext.class);
		}
		public InclusiveOrExpressionContext inclusiveOrExpression(int i) {
			return getRuleContext(InclusiveOrExpressionContext.class,i);
		}
		public List<TerminalNode> AndAnd() { return getTokens(MxLParser.AndAnd); }
		public TerminalNode AndAnd(int i) {
			return getToken(MxLParser.AndAnd, i);
		}
		public LogicalAndExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_logicalAndExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterLogicalAndExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitLogicalAndExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitLogicalAndExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LogicalAndExpressionContext logicalAndExpression() throws RecognitionException {
		LogicalAndExpressionContext _localctx = new LogicalAndExpressionContext(_ctx, getState());
		enterRule(_localctx, 78, RULE_logicalAndExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(417);
			inclusiveOrExpression();
			setState(422);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==AndAnd) {
				{
				{
				setState(418);
				match(AndAnd);
				setState(419);
				inclusiveOrExpression();
				}
				}
				setState(424);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LogicalOrExpressionContext extends ParserRuleContext {
		public List<LogicalAndExpressionContext> logicalAndExpression() {
			return getRuleContexts(LogicalAndExpressionContext.class);
		}
		public LogicalAndExpressionContext logicalAndExpression(int i) {
			return getRuleContext(LogicalAndExpressionContext.class,i);
		}
		public List<TerminalNode> OrOr() { return getTokens(MxLParser.OrOr); }
		public TerminalNode OrOr(int i) {
			return getToken(MxLParser.OrOr, i);
		}
		public LogicalOrExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_logicalOrExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterLogicalOrExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitLogicalOrExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitLogicalOrExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LogicalOrExpressionContext logicalOrExpression() throws RecognitionException {
		LogicalOrExpressionContext _localctx = new LogicalOrExpressionContext(_ctx, getState());
		enterRule(_localctx, 80, RULE_logicalOrExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(425);
			logicalAndExpression();
			setState(430);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==OrOr) {
				{
				{
				setState(426);
				match(OrOr);
				setState(427);
				logicalAndExpression();
				}
				}
				setState(432);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AssignmentExpressionContext extends ParserRuleContext {
		public LogicalOrExpressionContext logicalOrExpression() {
			return getRuleContext(LogicalOrExpressionContext.class,0);
		}
		public TerminalNode Assign() { return getToken(MxLParser.Assign, 0); }
		public AssignmentExpressionContext assignmentExpression() {
			return getRuleContext(AssignmentExpressionContext.class,0);
		}
		public AssignmentExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignmentExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterAssignmentExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitAssignmentExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitAssignmentExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AssignmentExpressionContext assignmentExpression() throws RecognitionException {
		AssignmentExpressionContext _localctx = new AssignmentExpressionContext(_ctx, getState());
		enterRule(_localctx, 82, RULE_assignmentExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(433);
			logicalOrExpression();
			setState(436);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Assign) {
				{
				setState(434);
				match(Assign);
				setState(435);
				assignmentExpression();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public List<AssignmentExpressionContext> assignmentExpression() {
			return getRuleContexts(AssignmentExpressionContext.class);
		}
		public AssignmentExpressionContext assignmentExpression(int i) {
			return getRuleContext(AssignmentExpressionContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxLParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxLParser.Comma, i);
		}
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		ExpressionContext _localctx = new ExpressionContext(_ctx, getState());
		enterRule(_localctx, 84, RULE_expression);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(438);
			assignmentExpression();
			setState(443);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,45,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(439);
					match(Comma);
					setState(440);
					assignmentExpression();
					}
					} 
				}
				setState(445);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,45,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassSpecifierContext extends ParserRuleContext {
		public ClassHeadContext classHead() {
			return getRuleContext(ClassHeadContext.class,0);
		}
		public TerminalNode LeftBrace() { return getToken(MxLParser.LeftBrace, 0); }
		public TerminalNode RightBrace() { return getToken(MxLParser.RightBrace, 0); }
		public List<MemberDeclarationContext> memberDeclaration() {
			return getRuleContexts(MemberDeclarationContext.class);
		}
		public MemberDeclarationContext memberDeclaration(int i) {
			return getRuleContext(MemberDeclarationContext.class,i);
		}
		public ClassSpecifierContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classSpecifier; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterClassSpecifier(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitClassSpecifier(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitClassSpecifier(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassSpecifierContext classSpecifier() throws RecognitionException {
		ClassSpecifierContext _localctx = new ClassSpecifierContext(_ctx, getState());
		enterRule(_localctx, 86, RULE_classSpecifier);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(446);
			classHead();
			setState(447);
			match(LeftBrace);
			setState(451);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Semi) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << Void) | (1L << Class) | (1L << Identifier))) != 0)) {
				{
				{
				setState(448);
				memberDeclaration();
				}
				}
				setState(453);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(454);
			match(RightBrace);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassHeadContext extends ParserRuleContext {
		public TerminalNode Class() { return getToken(MxLParser.Class, 0); }
		public TerminalNode Identifier() { return getToken(MxLParser.Identifier, 0); }
		public ClassHeadContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classHead; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterClassHead(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitClassHead(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitClassHead(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassHeadContext classHead() throws RecognitionException {
		ClassHeadContext _localctx = new ClassHeadContext(_ctx, getState());
		enterRule(_localctx, 88, RULE_classHead);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(456);
			match(Class);
			setState(457);
			match(Identifier);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MemberDeclarationContext extends ParserRuleContext {
		public FunctionDefinitionContext functionDefinition() {
			return getRuleContext(FunctionDefinitionContext.class,0);
		}
		public DeclarationStatementContext declarationStatement() {
			return getRuleContext(DeclarationStatementContext.class,0);
		}
		public ConstructFunctionDefinitionContext constructFunctionDefinition() {
			return getRuleContext(ConstructFunctionDefinitionContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxLParser.Semi, 0); }
		public MemberDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_memberDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterMemberDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitMemberDeclaration(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitMemberDeclaration(this);
			else return visitor.visitChildren(this);
		}
	}

	public final MemberDeclarationContext memberDeclaration() throws RecognitionException {
		MemberDeclarationContext _localctx = new MemberDeclarationContext(_ctx, getState());
		enterRule(_localctx, 90, RULE_memberDeclaration);
		try {
			setState(463);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,47,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(459);
				functionDefinition();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(460);
				declarationStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(461);
				constructFunctionDefinition();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(462);
				match(Semi);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstructFunctionDefinitionContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxLParser.Identifier, 0); }
		public TerminalNode LeftParen() { return getToken(MxLParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxLParser.RightParen, 0); }
		public CompoundStatementContext compoundStatement() {
			return getRuleContext(CompoundStatementContext.class,0);
		}
		public ConstructFunctionDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constructFunctionDefinition; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterConstructFunctionDefinition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitConstructFunctionDefinition(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitConstructFunctionDefinition(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ConstructFunctionDefinitionContext constructFunctionDefinition() throws RecognitionException {
		ConstructFunctionDefinitionContext _localctx = new ConstructFunctionDefinitionContext(_ctx, getState());
		enterRule(_localctx, 92, RULE_constructFunctionDefinition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(465);
			match(Identifier);
			setState(466);
			match(LeftParen);
			setState(467);
			match(RightParen);
			setState(468);
			compoundStatement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TheEqualOpContext extends ParserRuleContext {
		public TerminalNode Equal() { return getToken(MxLParser.Equal, 0); }
		public TerminalNode NotEqual() { return getToken(MxLParser.NotEqual, 0); }
		public TheEqualOpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_theEqualOp; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterTheEqualOp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitTheEqualOp(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitTheEqualOp(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TheEqualOpContext theEqualOp() throws RecognitionException {
		TheEqualOpContext _localctx = new TheEqualOpContext(_ctx, getState());
		enterRule(_localctx, 94, RULE_theEqualOp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(470);
			_la = _input.LA(1);
			if ( !(_la==Equal || _la==NotEqual) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TheCmpOpContext extends ParserRuleContext {
		public TerminalNode Less() { return getToken(MxLParser.Less, 0); }
		public TerminalNode Greater() { return getToken(MxLParser.Greater, 0); }
		public TerminalNode LessEqual() { return getToken(MxLParser.LessEqual, 0); }
		public TerminalNode GreaterEqual() { return getToken(MxLParser.GreaterEqual, 0); }
		public TheCmpOpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_theCmpOp; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterTheCmpOp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitTheCmpOp(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitTheCmpOp(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TheCmpOpContext theCmpOp() throws RecognitionException {
		TheCmpOpContext _localctx = new TheCmpOpContext(_ctx, getState());
		enterRule(_localctx, 96, RULE_theCmpOp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(472);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Greater) | (1L << Less) | (1L << LessEqual) | (1L << GreaterEqual))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TheShiftOpContext extends ParserRuleContext {
		public TerminalNode RightShift() { return getToken(MxLParser.RightShift, 0); }
		public TerminalNode LeftShift() { return getToken(MxLParser.LeftShift, 0); }
		public TheShiftOpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_theShiftOp; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterTheShiftOp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitTheShiftOp(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitTheShiftOp(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TheShiftOpContext theShiftOp() throws RecognitionException {
		TheShiftOpContext _localctx = new TheShiftOpContext(_ctx, getState());
		enterRule(_localctx, 98, RULE_theShiftOp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(474);
			_la = _input.LA(1);
			if ( !(_la==RightShift || _la==LeftShift) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ThePMOpContext extends ParserRuleContext {
		public TerminalNode Plus() { return getToken(MxLParser.Plus, 0); }
		public TerminalNode Minus() { return getToken(MxLParser.Minus, 0); }
		public ThePMOpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_thePMOp; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterThePMOp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitThePMOp(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitThePMOp(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ThePMOpContext thePMOp() throws RecognitionException {
		ThePMOpContext _localctx = new ThePMOpContext(_ctx, getState());
		enterRule(_localctx, 100, RULE_thePMOp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(476);
			_la = _input.LA(1);
			if ( !(_la==Minus || _la==Plus) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TheSDMOpContext extends ParserRuleContext {
		public TerminalNode Star() { return getToken(MxLParser.Star, 0); }
		public TerminalNode Div() { return getToken(MxLParser.Div, 0); }
		public TerminalNode Mod() { return getToken(MxLParser.Mod, 0); }
		public TheSDMOpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_theSDMOp; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterTheSDMOp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitTheSDMOp(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitTheSDMOp(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TheSDMOpContext theSDMOp() throws RecognitionException {
		TheSDMOpContext _localctx = new TheSDMOpContext(_ctx, getState());
		enterRule(_localctx, 102, RULE_theSDMOp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(478);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Mod) | (1L << Star) | (1L << Div))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TheOperatorContext extends ParserRuleContext {
		public TerminalNode New() { return getToken(MxLParser.New, 0); }
		public TerminalNode LeftBracket() { return getToken(MxLParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxLParser.RightBracket, 0); }
		public TerminalNode Plus() { return getToken(MxLParser.Plus, 0); }
		public TerminalNode Minus() { return getToken(MxLParser.Minus, 0); }
		public TerminalNode Star() { return getToken(MxLParser.Star, 0); }
		public TerminalNode Div() { return getToken(MxLParser.Div, 0); }
		public TerminalNode Mod() { return getToken(MxLParser.Mod, 0); }
		public TerminalNode Caret() { return getToken(MxLParser.Caret, 0); }
		public TerminalNode And() { return getToken(MxLParser.And, 0); }
		public TerminalNode Or() { return getToken(MxLParser.Or, 0); }
		public TerminalNode Tilde() { return getToken(MxLParser.Tilde, 0); }
		public TerminalNode Not() { return getToken(MxLParser.Not, 0); }
		public TerminalNode Assign() { return getToken(MxLParser.Assign, 0); }
		public TerminalNode Greater() { return getToken(MxLParser.Greater, 0); }
		public TerminalNode Less() { return getToken(MxLParser.Less, 0); }
		public TerminalNode GreaterEqual() { return getToken(MxLParser.GreaterEqual, 0); }
		public TerminalNode LessEqual() { return getToken(MxLParser.LessEqual, 0); }
		public TerminalNode RightShift() { return getToken(MxLParser.RightShift, 0); }
		public TerminalNode LeftShift() { return getToken(MxLParser.LeftShift, 0); }
		public TerminalNode Equal() { return getToken(MxLParser.Equal, 0); }
		public TerminalNode NotEqual() { return getToken(MxLParser.NotEqual, 0); }
		public TerminalNode AndAnd() { return getToken(MxLParser.AndAnd, 0); }
		public TerminalNode OrOr() { return getToken(MxLParser.OrOr, 0); }
		public TerminalNode PlusPlus() { return getToken(MxLParser.PlusPlus, 0); }
		public TerminalNode MinusMinus() { return getToken(MxLParser.MinusMinus, 0); }
		public TerminalNode Comma() { return getToken(MxLParser.Comma, 0); }
		public TerminalNode LeftParen() { return getToken(MxLParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxLParser.RightParen, 0); }
		public TheOperatorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_theOperator; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterTheOperator(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitTheOperator(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitTheOperator(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TheOperatorContext theOperator() throws RecognitionException {
		TheOperatorContext _localctx = new TheOperatorContext(_ctx, getState());
		enterRule(_localctx, 104, RULE_theOperator);
		int _la;
		try {
			setState(513);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case New:
				enterOuterAlt(_localctx, 1);
				{
				setState(480);
				match(New);
				setState(483);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==LeftBracket) {
					{
					setState(481);
					match(LeftBracket);
					setState(482);
					match(RightBracket);
					}
				}

				}
				break;
			case Plus:
				enterOuterAlt(_localctx, 2);
				{
				setState(485);
				match(Plus);
				}
				break;
			case Minus:
				enterOuterAlt(_localctx, 3);
				{
				setState(486);
				match(Minus);
				}
				break;
			case Star:
				enterOuterAlt(_localctx, 4);
				{
				setState(487);
				match(Star);
				}
				break;
			case Div:
				enterOuterAlt(_localctx, 5);
				{
				setState(488);
				match(Div);
				}
				break;
			case Mod:
				enterOuterAlt(_localctx, 6);
				{
				setState(489);
				match(Mod);
				}
				break;
			case Caret:
				enterOuterAlt(_localctx, 7);
				{
				setState(490);
				match(Caret);
				}
				break;
			case And:
				enterOuterAlt(_localctx, 8);
				{
				setState(491);
				match(And);
				}
				break;
			case Or:
				enterOuterAlt(_localctx, 9);
				{
				setState(492);
				match(Or);
				}
				break;
			case Tilde:
				enterOuterAlt(_localctx, 10);
				{
				setState(493);
				match(Tilde);
				}
				break;
			case Not:
				enterOuterAlt(_localctx, 11);
				{
				setState(494);
				match(Not);
				}
				break;
			case Assign:
				enterOuterAlt(_localctx, 12);
				{
				setState(495);
				match(Assign);
				}
				break;
			case Greater:
				enterOuterAlt(_localctx, 13);
				{
				setState(496);
				match(Greater);
				}
				break;
			case Less:
				enterOuterAlt(_localctx, 14);
				{
				setState(497);
				match(Less);
				}
				break;
			case GreaterEqual:
				enterOuterAlt(_localctx, 15);
				{
				setState(498);
				match(GreaterEqual);
				}
				break;
			case LessEqual:
				enterOuterAlt(_localctx, 16);
				{
				setState(499);
				match(LessEqual);
				}
				break;
			case RightShift:
				enterOuterAlt(_localctx, 17);
				{
				setState(500);
				match(RightShift);
				}
				break;
			case LeftShift:
				enterOuterAlt(_localctx, 18);
				{
				setState(501);
				match(LeftShift);
				}
				break;
			case Equal:
				enterOuterAlt(_localctx, 19);
				{
				setState(502);
				match(Equal);
				}
				break;
			case NotEqual:
				enterOuterAlt(_localctx, 20);
				{
				setState(503);
				match(NotEqual);
				}
				break;
			case AndAnd:
				enterOuterAlt(_localctx, 21);
				{
				setState(504);
				match(AndAnd);
				}
				break;
			case OrOr:
				enterOuterAlt(_localctx, 22);
				{
				setState(505);
				match(OrOr);
				}
				break;
			case PlusPlus:
				enterOuterAlt(_localctx, 23);
				{
				setState(506);
				match(PlusPlus);
				}
				break;
			case MinusMinus:
				enterOuterAlt(_localctx, 24);
				{
				setState(507);
				match(MinusMinus);
				}
				break;
			case Comma:
				enterOuterAlt(_localctx, 25);
				{
				setState(508);
				match(Comma);
				}
				break;
			case LeftParen:
				enterOuterAlt(_localctx, 26);
				{
				setState(509);
				match(LeftParen);
				setState(510);
				match(RightParen);
				}
				break;
			case LeftBracket:
				enterOuterAlt(_localctx, 27);
				{
				setState(511);
				match(LeftBracket);
				setState(512);
				match(RightBracket);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LiteralContext extends ParserRuleContext {
		public TerminalNode IntegerLiteral() { return getToken(MxLParser.IntegerLiteral, 0); }
		public TerminalNode StringLiteral() { return getToken(MxLParser.StringLiteral, 0); }
		public TerminalNode True() { return getToken(MxLParser.True, 0); }
		public TerminalNode False() { return getToken(MxLParser.False, 0); }
		public TerminalNode Null() { return getToken(MxLParser.Null, 0); }
		public LiteralContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_literal; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).enterLiteral(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLListener ) ((MxLListener)listener).exitLiteral(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLVisitor ) return ((MxLVisitor<? extends T>)visitor).visitLiteral(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LiteralContext literal() throws RecognitionException {
		LiteralContext _localctx = new LiteralContext(_ctx, getState());
		enterRule(_localctx, 106, RULE_literal);
		int _la;
		try {
			setState(519);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case IntegerLiteral:
				enterOuterAlt(_localctx, 1);
				{
				setState(515);
				match(IntegerLiteral);
				}
				break;
			case StringLiteral:
				enterOuterAlt(_localctx, 2);
				{
				setState(516);
				match(StringLiteral);
				}
				break;
			case True:
			case False:
				enterOuterAlt(_localctx, 3);
				{
				setState(517);
				_la = _input.LA(1);
				if ( !(_la==True || _la==False) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				}
				break;
			case Null:
				enterOuterAlt(_localctx, 4);
				{
				setState(518);
				match(Null);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 26:
			return postfixExpression_sempred((PostfixExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean postfixExpression_sempred(PostfixExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 4);
		case 1:
			return precpred(_ctx, 3);
		case 2:
			return precpred(_ctx, 2);
		case 3:
			return precpred(_ctx, 1);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3<\u020c\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\3\2\7\2p\n\2\f\2\16\2s\13\2\3\2\3\2"+
		"\3\3\3\3\5\3y\n\3\3\3\3\3\6\3}\n\3\r\3\16\3~\3\4\3\4\3\4\3\4\5\4\u0085"+
		"\n\4\3\5\3\5\3\6\3\6\3\6\3\6\5\6\u008d\n\6\3\7\3\7\5\7\u0091\n\7\3\b\3"+
		"\b\3\b\3\b\5\b\u0097\n\b\3\b\3\b\3\b\3\t\3\t\3\t\3\t\3\t\3\t\7\t\u00a2"+
		"\n\t\f\t\16\t\u00a5\13\t\3\n\3\n\5\n\u00a9\n\n\3\n\3\n\3\13\3\13\3\13"+
		"\7\13\u00b0\n\13\f\13\16\13\u00b3\13\13\3\f\3\f\3\f\5\f\u00b8\n\f\3\r"+
		"\3\r\3\r\3\r\3\r\3\r\3\r\5\r\u00c1\n\r\3\16\6\16\u00c4\n\16\r\16\16\16"+
		"\u00c5\3\17\3\17\5\17\u00ca\n\17\3\17\3\17\3\20\3\20\3\20\3\21\3\21\3"+
		"\21\3\21\3\21\3\21\3\21\5\21\u00d8\n\21\3\22\3\22\3\22\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\3\22\5\22\u00e4\n\22\3\22\3\22\5\22\u00e8\n\22\3\22\3"+
		"\22\3\22\5\22\u00ed\n\22\3\23\3\23\5\23\u00f1\n\23\3\23\3\23\5\23\u00f5"+
		"\n\23\3\23\3\23\3\24\3\24\3\25\3\25\3\25\5\25\u00fe\n\25\3\26\3\26\3\27"+
		"\3\27\3\27\3\27\3\27\3\27\3\27\3\27\5\27\u010a\n\27\3\30\3\30\3\31\3\31"+
		"\3\31\3\31\3\31\3\32\3\32\3\32\3\32\3\33\3\33\5\33\u0119\n\33\3\33\5\33"+
		"\u011c\n\33\3\34\3\34\3\34\3\34\3\34\3\34\5\34\u0124\n\34\3\34\3\34\3"+
		"\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\7\34\u0131\n\34\f\34\16\34"+
		"\u0134\13\34\3\35\3\35\3\35\3\35\5\35\u013a\n\35\3\35\3\35\5\35\u013e"+
		"\n\35\3\36\3\36\3\37\3\37\3\37\3\37\5\37\u0146\n\37\3\37\3\37\5\37\u014a"+
		"\n\37\3 \3 \5 \u014e\n \3 \3 \3 \3 \6 \u0154\n \r \16 \u0155\3 \3 \7 "+
		"\u015a\n \f \16 \u015d\13 \3!\3!\3!\3!\7!\u0163\n!\f!\16!\u0166\13!\3"+
		"\"\3\"\3\"\3\"\7\"\u016c\n\"\f\"\16\"\u016f\13\"\3#\3#\3#\3#\7#\u0175"+
		"\n#\f#\16#\u0178\13#\3$\3$\3$\3$\7$\u017e\n$\f$\16$\u0181\13$\3%\3%\3"+
		"%\3%\7%\u0187\n%\f%\16%\u018a\13%\3&\3&\3&\7&\u018f\n&\f&\16&\u0192\13"+
		"&\3\'\3\'\3\'\7\'\u0197\n\'\f\'\16\'\u019a\13\'\3(\3(\3(\7(\u019f\n(\f"+
		"(\16(\u01a2\13(\3)\3)\3)\7)\u01a7\n)\f)\16)\u01aa\13)\3*\3*\3*\7*\u01af"+
		"\n*\f*\16*\u01b2\13*\3+\3+\3+\5+\u01b7\n+\3,\3,\3,\7,\u01bc\n,\f,\16,"+
		"\u01bf\13,\3-\3-\3-\7-\u01c4\n-\f-\16-\u01c7\13-\3-\3-\3.\3.\3.\3/\3/"+
		"\3/\3/\5/\u01d2\n/\3\60\3\60\3\60\3\60\3\60\3\61\3\61\3\62\3\62\3\63\3"+
		"\63\3\64\3\64\3\65\3\65\3\66\3\66\3\66\5\66\u01e6\n\66\3\66\3\66\3\66"+
		"\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66"+
		"\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66\5\66\u0204\n\66"+
		"\3\67\3\67\3\67\3\67\5\67\u020a\n\67\3\67\2\3\668\2\4\6\b\n\f\16\20\22"+
		"\24\26\30\32\34\36 \"$&(*,.\60\62\64\668:<>@BDFHJLNPRTVXZ\\^`bdfhjl\2"+
		"\13\3\2\')\3\2\30\31\5\2\4\6\16\16\21\23\3\2\n\13\4\2\b\t\f\r\3\2\25\26"+
		"\3\2\4\5\4\2\3\3\6\7\3\2,-\2\u0238\2q\3\2\2\2\4x\3\2\2\2\6\u0084\3\2\2"+
		"\2\b\u0086\3\2\2\2\n\u008c\3\2\2\2\f\u0090\3\2\2\2\16\u0092\3\2\2\2\20"+
		"\u009b\3\2\2\2\22\u00a6\3\2\2\2\24\u00ac\3\2\2\2\26\u00b4\3\2\2\2\30\u00c0"+
		"\3\2\2\2\32\u00c3\3\2\2\2\34\u00c7\3\2\2\2\36\u00cd\3\2\2\2 \u00d0\3\2"+
		"\2\2\"\u00ec\3\2\2\2$\u00f4\3\2\2\2&\u00f8\3\2\2\2(\u00fd\3\2\2\2*\u00ff"+
		"\3\2\2\2,\u0109\3\2\2\2.\u010b\3\2\2\2\60\u010d\3\2\2\2\62\u0112\3\2\2"+
		"\2\64\u011b\3\2\2\2\66\u011d\3\2\2\28\u013d\3\2\2\2:\u013f\3\2\2\2<\u0141"+
		"\3\2\2\2>\u014d\3\2\2\2@\u015e\3\2\2\2B\u0167\3\2\2\2D\u0170\3\2\2\2F"+
		"\u0179\3\2\2\2H\u0182\3\2\2\2J\u018b\3\2\2\2L\u0193\3\2\2\2N\u019b\3\2"+
		"\2\2P\u01a3\3\2\2\2R\u01ab\3\2\2\2T\u01b3\3\2\2\2V\u01b8\3\2\2\2X\u01c0"+
		"\3\2\2\2Z\u01ca\3\2\2\2\\\u01d1\3\2\2\2^\u01d3\3\2\2\2`\u01d8\3\2\2\2"+
		"b\u01da\3\2\2\2d\u01dc\3\2\2\2f\u01de\3\2\2\2h\u01e0\3\2\2\2j\u0203\3"+
		"\2\2\2l\u0209\3\2\2\2np\5\f\7\2on\3\2\2\2ps\3\2\2\2qo\3\2\2\2qr\3\2\2"+
		"\2rt\3\2\2\2sq\3\2\2\2tu\7\2\2\3u\3\3\2\2\2vy\5\b\5\2wy\7<\2\2xv\3\2\2"+
		"\2xw\3\2\2\2y|\3\2\2\2z{\7\33\2\2{}\7\34\2\2|z\3\2\2\2}~\3\2\2\2~|\3\2"+
		"\2\2~\177\3\2\2\2\177\5\3\2\2\2\u0080\u0085\5\b\5\2\u0081\u0085\7<\2\2"+
		"\u0082\u0085\5X-\2\u0083\u0085\5\4\3\2\u0084\u0080\3\2\2\2\u0084\u0081"+
		"\3\2\2\2\u0084\u0082\3\2\2\2\u0084\u0083\3\2\2\2\u0085\7\3\2\2\2\u0086"+
		"\u0087\t\2\2\2\u0087\t\3\2\2\2\u0088\u008d\7+\2\2\u0089\u008d\5\b\5\2"+
		"\u008a\u008d\7<\2\2\u008b\u008d\5\4\3\2\u008c\u0088\3\2\2\2\u008c\u0089"+
		"\3\2\2\2\u008c\u008a\3\2\2\2\u008c\u008b\3\2\2\2\u008d\13\3\2\2\2\u008e"+
		"\u0091\5\22\n\2\u008f\u0091\5\16\b\2\u0090\u008e\3\2\2\2\u0090\u008f\3"+
		"\2\2\2\u0091\r\3\2\2\2\u0092\u0093\5\n\6\2\u0093\u0094\7<\2\2\u0094\u0096"+
		"\7\35\2\2\u0095\u0097\5\20\t\2\u0096\u0095\3\2\2\2\u0096\u0097\3\2\2\2"+
		"\u0097\u0098\3\2\2\2\u0098\u0099\7\36\2\2\u0099\u009a\5\34\17\2\u009a"+
		"\17\3\2\2\2\u009b\u009c\5\6\4\2\u009c\u00a3\7<\2\2\u009d\u009e\7 \2\2"+
		"\u009e\u009f\5\6\4\2\u009f\u00a0\7<\2\2\u00a0\u00a2\3\2\2\2\u00a1\u009d"+
		"\3\2\2\2\u00a2\u00a5\3\2\2\2\u00a3\u00a1\3\2\2\2\u00a3\u00a4\3\2\2\2\u00a4"+
		"\21\3\2\2\2\u00a5\u00a3\3\2\2\2\u00a6\u00a8\5\6\4\2\u00a7\u00a9\5\24\13"+
		"\2\u00a8\u00a7\3\2\2\2\u00a8\u00a9\3\2\2\2\u00a9\u00aa\3\2\2\2\u00aa\u00ab"+
		"\7\37\2\2\u00ab\23\3\2\2\2\u00ac\u00b1\5\26\f\2\u00ad\u00ae\7 \2\2\u00ae"+
		"\u00b0\5\26\f\2\u00af\u00ad\3\2\2\2\u00b0\u00b3\3\2\2\2\u00b1\u00af\3"+
		"\2\2\2\u00b1\u00b2\3\2\2\2\u00b2\25\3\2\2\2\u00b3\u00b1\3\2\2\2\u00b4"+
		"\u00b7\7<\2\2\u00b5\u00b6\7\27\2\2\u00b6\u00b8\5V,\2\u00b7\u00b5\3\2\2"+
		"\2\u00b7\u00b8\3\2\2\2\u00b8\27\3\2\2\2\u00b9\u00c1\5\22\n\2\u00ba\u00c1"+
		"\5\36\20\2\u00bb\u00c1\5\34\17\2\u00bc\u00c1\5 \21\2\u00bd\u00c1\5\"\22"+
		"\2\u00be\u00c1\5$\23\2\u00bf\u00c1\7\37\2\2\u00c0\u00b9\3\2\2\2\u00c0"+
		"\u00ba\3\2\2\2\u00c0\u00bb\3\2\2\2\u00c0\u00bc\3\2\2\2\u00c0\u00bd\3\2"+
		"\2\2\u00c0\u00be\3\2\2\2\u00c0\u00bf\3\2\2\2\u00c1\31\3\2\2\2\u00c2\u00c4"+
		"\5\30\r\2\u00c3\u00c2\3\2\2\2\u00c4\u00c5\3\2\2\2\u00c5\u00c3\3\2\2\2"+
		"\u00c5\u00c6\3\2\2\2\u00c6\33\3\2\2\2\u00c7\u00c9\7!\2\2\u00c8\u00ca\5"+
		"\32\16\2\u00c9\u00c8\3\2\2\2\u00c9\u00ca\3\2\2\2\u00ca\u00cb\3\2\2\2\u00cb"+
		"\u00cc\7\"\2\2\u00cc\35\3\2\2\2\u00cd\u00ce\5V,\2\u00ce\u00cf\7\37\2\2"+
		"\u00cf\37\3\2\2\2\u00d0\u00d1\7.\2\2\u00d1\u00d2\7\35\2\2\u00d2\u00d3"+
		"\5&\24\2\u00d3\u00d4\7\36\2\2\u00d4\u00d7\5\30\r\2\u00d5\u00d6\7/\2\2"+
		"\u00d6\u00d8\5\30\r\2\u00d7\u00d5\3\2\2\2\u00d7\u00d8\3\2\2\2\u00d8!\3"+
		"\2\2\2\u00d9\u00da\7\61\2\2\u00da\u00db\7\35\2\2\u00db\u00dc\5&\24\2\u00dc"+
		"\u00dd\7\36\2\2\u00dd\u00de\5\30\r\2\u00de\u00ed\3\2\2\2\u00df\u00e0\7"+
		"\60\2\2\u00e0\u00e1\7\35\2\2\u00e1\u00e3\5(\25\2\u00e2\u00e4\5&\24\2\u00e3"+
		"\u00e2\3\2\2\2\u00e3\u00e4\3\2\2\2\u00e4\u00e5\3\2\2\2\u00e5\u00e7\7\37"+
		"\2\2\u00e6\u00e8\5*\26\2\u00e7\u00e6\3\2\2\2\u00e7\u00e8\3\2\2\2\u00e8"+
		"\u00e9\3\2\2\2\u00e9\u00ea\7\36\2\2\u00ea\u00eb\5\30\r\2\u00eb\u00ed\3"+
		"\2\2\2\u00ec\u00d9\3\2\2\2\u00ec\u00df\3\2\2\2\u00ed#\3\2\2\2\u00ee\u00f0"+
		"\7\64\2\2\u00ef\u00f1\5V,\2\u00f0\u00ef\3\2\2\2\u00f0\u00f1\3\2\2\2\u00f1"+
		"\u00f5\3\2\2\2\u00f2\u00f5\7\62\2\2\u00f3\u00f5\7\63\2\2\u00f4\u00ee\3"+
		"\2\2\2\u00f4\u00f2\3\2\2\2\u00f4\u00f3\3\2\2\2\u00f5\u00f6\3\2\2\2\u00f6"+
		"\u00f7\7\37\2\2\u00f7%\3\2\2\2\u00f8\u00f9\5V,\2\u00f9\'\3\2\2\2\u00fa"+
		"\u00fe\5\36\20\2\u00fb\u00fe\5\22\n\2\u00fc\u00fe\7\37\2\2\u00fd\u00fa"+
		"\3\2\2\2\u00fd\u00fb\3\2\2\2\u00fd\u00fc\3\2\2\2\u00fe)\3\2\2\2\u00ff"+
		"\u0100\5V,\2\u0100+\3\2\2\2\u0101\u010a\5l\67\2\u0102\u010a\7\67\2\2\u0103"+
		"\u0104\7\35\2\2\u0104\u0105\5V,\2\u0105\u0106\7\36\2\2\u0106\u010a\3\2"+
		"\2\2\u0107\u010a\5.\30\2\u0108\u010a\5\60\31\2\u0109\u0101\3\2\2\2\u0109"+
		"\u0102\3\2\2\2\u0109\u0103\3\2\2\2\u0109\u0107\3\2\2\2\u0109\u0108\3\2"+
		"\2\2\u010a-\3\2\2\2\u010b\u010c\7<\2\2\u010c/\3\2\2\2\u010d\u010e\5\62"+
		"\32\2\u010e\u010f\5\64\33\2\u010f\u0110\78\2\2\u0110\u0111\5\34\17\2\u0111"+
		"\61\3\2\2\2\u0112\u0113\7\33\2\2\u0113\u0114\7\21\2\2\u0114\u0115\7\34"+
		"\2\2\u0115\63\3\2\2\2\u0116\u0118\7\35\2\2\u0117\u0119\5\20\t\2\u0118"+
		"\u0117\3\2\2\2\u0118\u0119\3\2\2\2\u0119\u011a\3\2\2\2\u011a\u011c\7\36"+
		"\2\2\u011b\u0116\3\2\2\2\u011b\u011c\3\2\2\2\u011c\65\3\2\2\2\u011d\u011e"+
		"\b\34\1\2\u011e\u011f\5,\27\2\u011f\u0132\3\2\2\2\u0120\u0121\f\6\2\2"+
		"\u0121\u0123\7\35\2\2\u0122\u0124\5V,\2\u0123\u0122\3\2\2\2\u0123\u0124"+
		"\3\2\2\2\u0124\u0125\3\2\2\2\u0125\u0131\7\36\2\2\u0126\u0127\f\5\2\2"+
		"\u0127\u0128\7\33\2\2\u0128\u0129\5V,\2\u0129\u012a\7\34\2\2\u012a\u0131"+
		"\3\2\2\2\u012b\u012c\f\4\2\2\u012c\u012d\7\32\2\2\u012d\u0131\5.\30\2"+
		"\u012e\u012f\f\3\2\2\u012f\u0131\t\3\2\2\u0130\u0120\3\2\2\2\u0130\u0126"+
		"\3\2\2\2\u0130\u012b\3\2\2\2\u0130\u012e\3\2\2\2\u0131\u0134\3\2\2\2\u0132"+
		"\u0130\3\2\2\2\u0132\u0133\3\2\2\2\u0133\67\3\2\2\2\u0134\u0132\3\2\2"+
		"\2\u0135\u013e\5\66\34\2\u0136\u013a\7\30\2\2\u0137\u013a\7\31\2\2\u0138"+
		"\u013a\5:\36\2\u0139\u0136\3\2\2\2\u0139\u0137\3\2\2\2\u0139\u0138\3\2"+
		"\2\2\u013a\u013b\3\2\2\2\u013b\u013e\58\35\2\u013c\u013e\5<\37\2\u013d"+
		"\u0135\3\2\2\2\u013d\u0139\3\2\2\2\u013d\u013c\3\2\2\2\u013e9\3\2\2\2"+
		"\u013f\u0140\t\4\2\2\u0140;\3\2\2\2\u0141\u0145\7\65\2\2\u0142\u0146\5"+
		"\b\5\2\u0143\u0146\7<\2\2\u0144\u0146\5> \2\u0145\u0142\3\2\2\2\u0145"+
		"\u0143\3\2\2\2\u0145\u0144\3\2\2\2\u0146\u0149\3\2\2\2\u0147\u0148\7\35"+
		"\2\2\u0148\u014a\7\36\2\2\u0149\u0147\3\2\2\2\u0149\u014a\3\2\2\2\u014a"+
		"=\3\2\2\2\u014b\u014e\5\b\5\2\u014c\u014e\7<\2\2\u014d\u014b\3\2\2\2\u014d"+
		"\u014c\3\2\2\2\u014e\u0153\3\2\2\2\u014f\u0150\7\33\2\2\u0150\u0151\5"+
		"V,\2\u0151\u0152\7\34\2\2\u0152\u0154\3\2\2\2\u0153\u014f\3\2\2\2\u0154"+
		"\u0155\3\2\2\2\u0155\u0153\3\2\2\2\u0155\u0156\3\2\2\2\u0156\u015b\3\2"+
		"\2\2\u0157\u0158\7\33\2\2\u0158\u015a\7\34\2\2\u0159\u0157\3\2\2\2\u015a"+
		"\u015d\3\2\2\2\u015b\u0159\3\2\2\2\u015b\u015c\3\2\2\2\u015c?\3\2\2\2"+
		"\u015d\u015b\3\2\2\2\u015e\u0164\58\35\2\u015f\u0160\5h\65\2\u0160\u0161"+
		"\58\35\2\u0161\u0163\3\2\2\2\u0162\u015f\3\2\2\2\u0163\u0166\3\2\2\2\u0164"+
		"\u0162\3\2\2\2\u0164\u0165\3\2\2\2\u0165A\3\2\2\2\u0166\u0164\3\2\2\2"+
		"\u0167\u016d\5@!\2\u0168\u0169\5f\64\2\u0169\u016a\5@!\2\u016a\u016c\3"+
		"\2\2\2\u016b\u0168\3\2\2\2\u016c\u016f\3\2\2\2\u016d\u016b\3\2\2\2\u016d"+
		"\u016e\3\2\2\2\u016eC\3\2\2\2\u016f\u016d\3\2\2\2\u0170\u0176\5B\"\2\u0171"+
		"\u0172\5d\63\2\u0172\u0173\5B\"\2\u0173\u0175\3\2\2\2\u0174\u0171\3\2"+
		"\2\2\u0175\u0178\3\2\2\2\u0176\u0174\3\2\2\2\u0176\u0177\3\2\2\2\u0177"+
		"E\3\2\2\2\u0178\u0176\3\2\2\2\u0179\u017f\5D#\2\u017a\u017b\5b\62\2\u017b"+
		"\u017c\5D#\2\u017c\u017e\3\2\2\2\u017d\u017a\3\2\2\2\u017e\u0181\3\2\2"+
		"\2\u017f\u017d\3\2\2\2\u017f\u0180\3\2\2\2\u0180G\3\2\2\2\u0181\u017f"+
		"\3\2\2\2\u0182\u0188\5F$\2\u0183\u0184\5`\61\2\u0184\u0185\5F$\2\u0185"+
		"\u0187\3\2\2\2\u0186\u0183\3\2\2\2\u0187\u018a\3\2\2\2\u0188\u0186\3\2"+
		"\2\2\u0188\u0189\3\2\2\2\u0189I\3\2\2\2\u018a\u0188\3\2\2\2\u018b\u0190"+
		"\5H%\2\u018c\u018d\7\21\2\2\u018d\u018f\5H%\2\u018e\u018c\3\2\2\2\u018f"+
		"\u0192\3\2\2\2\u0190\u018e\3\2\2\2\u0190\u0191\3\2\2\2\u0191K\3\2\2\2"+
		"\u0192\u0190\3\2\2\2\u0193\u0198\5J&\2\u0194\u0195\7\24\2\2\u0195\u0197"+
		"\5J&\2\u0196\u0194\3\2\2\2\u0197\u019a\3\2\2\2\u0198\u0196\3\2\2\2\u0198"+
		"\u0199\3\2\2\2\u0199M\3\2\2\2\u019a\u0198\3\2\2\2\u019b\u01a0\5L\'\2\u019c"+
		"\u019d\7\22\2\2\u019d\u019f\5L\'\2\u019e\u019c\3\2\2\2\u019f\u01a2\3\2"+
		"\2\2\u01a0\u019e\3\2\2\2\u01a0\u01a1\3\2\2\2\u01a1O\3\2\2\2\u01a2\u01a0"+
		"\3\2\2\2\u01a3\u01a8\5N(\2\u01a4\u01a5\7\17\2\2\u01a5\u01a7\5N(\2\u01a6"+
		"\u01a4\3\2\2\2\u01a7\u01aa\3\2\2\2\u01a8\u01a6\3\2\2\2\u01a8\u01a9\3\2"+
		"\2\2\u01a9Q\3\2\2\2\u01aa\u01a8\3\2\2\2\u01ab\u01b0\5P)\2\u01ac\u01ad"+
		"\7\20\2\2\u01ad\u01af\5P)\2\u01ae\u01ac\3\2\2\2\u01af\u01b2\3\2\2\2\u01b0"+
		"\u01ae\3\2\2\2\u01b0\u01b1\3\2\2\2\u01b1S\3\2\2\2\u01b2\u01b0\3\2\2\2"+
		"\u01b3\u01b6\5R*\2\u01b4\u01b5\7\27\2\2\u01b5\u01b7\5T+\2\u01b6\u01b4"+
		"\3\2\2\2\u01b6\u01b7\3\2\2\2\u01b7U\3\2\2\2\u01b8\u01bd\5T+\2\u01b9\u01ba"+
		"\7 \2\2\u01ba\u01bc\5T+\2\u01bb\u01b9\3\2\2\2\u01bc\u01bf\3\2\2\2\u01bd"+
		"\u01bb\3\2\2\2\u01bd\u01be\3\2\2\2\u01beW\3\2\2\2\u01bf\u01bd\3\2\2\2"+
		"\u01c0\u01c1\5Z.\2\u01c1\u01c5\7!\2\2\u01c2\u01c4\5\\/\2\u01c3\u01c2\3"+
		"\2\2\2\u01c4\u01c7\3\2\2\2\u01c5\u01c3\3\2\2\2\u01c5\u01c6\3\2\2\2\u01c6"+
		"\u01c8\3\2\2\2\u01c7\u01c5\3\2\2\2\u01c8\u01c9\7\"\2\2\u01c9Y\3\2\2\2"+
		"\u01ca\u01cb\7\66\2\2\u01cb\u01cc\7<\2\2\u01cc[\3\2\2\2\u01cd\u01d2\5"+
		"\16\b\2\u01ce\u01d2\5\22\n\2\u01cf\u01d2\5^\60\2\u01d0\u01d2\7\37\2\2"+
		"\u01d1\u01cd\3\2\2\2\u01d1\u01ce\3\2\2\2\u01d1\u01cf\3\2\2\2\u01d1\u01d0"+
		"\3\2\2\2\u01d2]\3\2\2\2\u01d3\u01d4\7<\2\2\u01d4\u01d5\7\35\2\2\u01d5"+
		"\u01d6\7\36\2\2\u01d6\u01d7\5\34\17\2\u01d7_\3\2\2\2\u01d8\u01d9\t\5\2"+
		"\2\u01d9a\3\2\2\2\u01da\u01db\t\6\2\2\u01dbc\3\2\2\2\u01dc\u01dd\t\7\2"+
		"\2\u01dde\3\2\2\2\u01de\u01df\t\b\2\2\u01dfg\3\2\2\2\u01e0\u01e1\t\t\2"+
		"\2\u01e1i\3\2\2\2\u01e2\u01e5\7\65\2\2\u01e3\u01e4\7\33\2\2\u01e4\u01e6"+
		"\7\34\2\2\u01e5\u01e3\3\2\2\2\u01e5\u01e6\3\2\2\2\u01e6\u0204\3\2\2\2"+
		"\u01e7\u0204\7\5\2\2\u01e8\u0204\7\4\2\2\u01e9\u0204\7\6\2\2\u01ea\u0204"+
		"\7\7\2\2\u01eb\u0204\7\3\2\2\u01ec\u0204\7\24\2\2\u01ed\u0204\7\21\2\2"+
		"\u01ee\u0204\7\22\2\2\u01ef\u0204\7\23\2\2\u01f0\u0204\7\16\2\2\u01f1"+
		"\u0204\7\27\2\2\u01f2\u0204\7\b\2\2\u01f3\u0204\7\t\2\2\u01f4\u0204\7"+
		"\r\2\2\u01f5\u0204\7\f\2\2\u01f6\u0204\7\25\2\2\u01f7\u0204\7\26\2\2\u01f8"+
		"\u0204\7\n\2\2\u01f9\u0204\7\13\2\2\u01fa\u0204\7\17\2\2\u01fb\u0204\7"+
		"\20\2\2\u01fc\u0204\7\30\2\2\u01fd\u0204\7\31\2\2\u01fe\u0204\7 \2\2\u01ff"+
		"\u0200\7\35\2\2\u0200\u0204\7\36\2\2\u0201\u0202\7\33\2\2\u0202\u0204"+
		"\7\34\2\2\u0203\u01e2\3\2\2\2\u0203\u01e7\3\2\2\2\u0203\u01e8\3\2\2\2"+
		"\u0203\u01e9\3\2\2\2\u0203\u01ea\3\2\2\2\u0203\u01eb\3\2\2\2\u0203\u01ec"+
		"\3\2\2\2\u0203\u01ed\3\2\2\2\u0203\u01ee\3\2\2\2\u0203\u01ef\3\2\2\2\u0203"+
		"\u01f0\3\2\2\2\u0203\u01f1\3\2\2\2\u0203\u01f2\3\2\2\2\u0203\u01f3\3\2"+
		"\2\2\u0203\u01f4\3\2\2\2\u0203\u01f5\3\2\2\2\u0203\u01f6\3\2\2\2\u0203"+
		"\u01f7\3\2\2\2\u0203\u01f8\3\2\2\2\u0203\u01f9\3\2\2\2\u0203\u01fa\3\2"+
		"\2\2\u0203\u01fb\3\2\2\2\u0203\u01fc\3\2\2\2\u0203\u01fd\3\2\2\2\u0203"+
		"\u01fe\3\2\2\2\u0203\u01ff\3\2\2\2\u0203\u0201\3\2\2\2\u0204k\3\2\2\2"+
		"\u0205\u020a\7:\2\2\u0206\u020a\7;\2\2\u0207\u020a\t\n\2\2\u0208\u020a"+
		"\7*\2\2\u0209\u0205\3\2\2\2\u0209\u0206\3\2\2\2\u0209\u0207\3\2\2\2\u0209"+
		"\u0208\3\2\2\2\u020am\3\2\2\2\65qx~\u0084\u008c\u0090\u0096\u00a3\u00a8"+
		"\u00b1\u00b7\u00c0\u00c5\u00c9\u00d7\u00e3\u00e7\u00ec\u00f0\u00f4\u00fd"+
		"\u0109\u0118\u011b\u0123\u0130\u0132\u0139\u013d\u0145\u0149\u014d\u0155"+
		"\u015b\u0164\u016d\u0176\u017f\u0188\u0190\u0198\u01a0\u01a8\u01b0\u01b6"+
		"\u01bd\u01c5\u01d1\u01e5\u0203\u0209";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}