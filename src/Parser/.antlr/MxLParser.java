// Generated from d:\workspace\libro_workspace\OS\Compiler\src\Parser\MxL.g4 by ANTLR 4.8
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
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

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
		RULE_theOperator = 47, RULE_literal = 48;
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
			"memberDeclaration", "constructFunctionDefinition", "theOperator", "literal"
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
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(101);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Void) | (1L << Class) | (1L << Identifier))) != 0)) {
				{
				{
				setState(98);
				declaration();
				}
				}
				setState(103);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(104);
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
	}

	public final ArraySpecifierContext arraySpecifier() throws RecognitionException {
		ArraySpecifierContext _localctx = new ArraySpecifierContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_arraySpecifier);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(108);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Int:
			case Bool:
			case String:
				{
				setState(106);
				buildInType();
				}
				break;
			case Identifier:
				{
				setState(107);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(112); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(110);
				match(LeftBracket);
				setState(111);
				match(RightBracket);
				}
				}
				setState(114); 
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
	}

	public final VarTypeContext varType() throws RecognitionException {
		VarTypeContext _localctx = new VarTypeContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_varType);
		try {
			setState(120);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(116);
				buildInType();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(117);
				match(Identifier);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(118);
				classSpecifier();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(119);
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
	}

	public final BuildInTypeContext buildInType() throws RecognitionException {
		BuildInTypeContext _localctx = new BuildInTypeContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_buildInType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(122);
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
	}

	public final ReturnTypeContext returnType() throws RecognitionException {
		ReturnTypeContext _localctx = new ReturnTypeContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_returnType);
		try {
			setState(128);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(124);
				match(Void);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(125);
				buildInType();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(126);
				match(Identifier);
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(127);
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
	}

	public final DeclarationContext declaration() throws RecognitionException {
		DeclarationContext _localctx = new DeclarationContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_declaration);
		try {
			setState(132);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(130);
				declarationStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(131);
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
	}

	public final FunctionDefinitionContext functionDefinition() throws RecognitionException {
		FunctionDefinitionContext _localctx = new FunctionDefinitionContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_functionDefinition);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(134);
			returnType();
			setState(135);
			match(Identifier);
			setState(136);
			match(LeftParen);
			setState(138);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Class) | (1L << Identifier))) != 0)) {
				{
				setState(137);
				functionParameterDef();
				}
			}

			setState(140);
			match(RightParen);
			setState(141);
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
	}

	public final FunctionParameterDefContext functionParameterDef() throws RecognitionException {
		FunctionParameterDefContext _localctx = new FunctionParameterDefContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_functionParameterDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(143);
			varType();
			setState(144);
			match(Identifier);
			setState(151);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(145);
				match(Comma);
				setState(146);
				varType();
				setState(147);
				match(Identifier);
				}
				}
				setState(153);
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
		public TerminalNode Semi() { return getToken(MxLParser.Semi, 0); }
		public ArraySpecifierContext arraySpecifier() {
			return getRuleContext(ArraySpecifierContext.class,0);
		}
		public VarTypeContext varType() {
			return getRuleContext(VarTypeContext.class,0);
		}
		public InitDeclaratorListContext initDeclaratorList() {
			return getRuleContext(InitDeclaratorListContext.class,0);
		}
		public DeclarationStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declarationStatement; }
	}

	public final DeclarationStatementContext declarationStatement() throws RecognitionException {
		DeclarationStatementContext _localctx = new DeclarationStatementContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_declarationStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(156);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
			case 1:
				{
				setState(154);
				arraySpecifier();
				}
				break;
			case 2:
				{
				setState(155);
				varType();
				}
				break;
			}
			setState(159);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Identifier) {
				{
				setState(158);
				initDeclaratorList();
				}
			}

			setState(161);
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
	}

	public final InitDeclaratorListContext initDeclaratorList() throws RecognitionException {
		InitDeclaratorListContext _localctx = new InitDeclaratorListContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_initDeclaratorList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(163);
			declarator();
			setState(168);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(164);
				match(Comma);
				setState(165);
				declarator();
				}
				}
				setState(170);
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
	}

	public final DeclaratorContext declarator() throws RecognitionException {
		DeclaratorContext _localctx = new DeclaratorContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_declarator);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(171);
			match(Identifier);
			setState(174);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Assign) {
				{
				setState(172);
				match(Assign);
				setState(173);
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
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_statement);
		try {
			setState(183);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,12,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(176);
				declarationStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(177);
				expressionStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(178);
				compoundStatement();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(179);
				selectionStatement();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(180);
				iterationStatement();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(181);
				jumpStatement();
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(182);
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
	}

	public final StatementSeqContext statementSeq() throws RecognitionException {
		StatementSeqContext _localctx = new StatementSeqContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_statementSeq);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(186); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(185);
				statement();
				}
				}
				setState(188); 
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
	}

	public final CompoundStatementContext compoundStatement() throws RecognitionException {
		CompoundStatementContext _localctx = new CompoundStatementContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_compoundStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(190);
			match(LeftBrace);
			setState(192);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Semi) | (1L << LeftBrace) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << Null) | (1L << True) | (1L << False) | (1L << If) | (1L << For) | (1L << While) | (1L << Break) | (1L << Continue) | (1L << Return) | (1L << New) | (1L << Class) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0)) {
				{
				setState(191);
				statementSeq();
				}
			}

			setState(194);
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
		public TerminalNode Semi() { return getToken(MxLParser.Semi, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExpressionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expressionStatement; }
	}

	public final ExpressionStatementContext expressionStatement() throws RecognitionException {
		ExpressionStatementContext _localctx = new ExpressionStatementContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_expressionStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(197);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0)) {
				{
				setState(196);
				expression();
				}
			}

			setState(199);
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
	}

	public final SelectionStatementContext selectionStatement() throws RecognitionException {
		SelectionStatementContext _localctx = new SelectionStatementContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_selectionStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(201);
			match(If);
			setState(202);
			match(LeftParen);
			setState(203);
			condition();
			setState(204);
			match(RightParen);
			setState(205);
			((SelectionStatementContext)_localctx).trueStatement = statement();
			setState(208);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
			case 1:
				{
				setState(206);
				match(Else);
				setState(207);
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
	}

	public final IterationStatementContext iterationStatement() throws RecognitionException {
		IterationStatementContext _localctx = new IterationStatementContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_iterationStatement);
		int _la;
		try {
			setState(227);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case While:
				enterOuterAlt(_localctx, 1);
				{
				setState(210);
				match(While);
				setState(211);
				match(LeftParen);
				setState(212);
				condition();
				setState(213);
				match(RightParen);
				setState(214);
				statement();
				}
				break;
			case For:
				enterOuterAlt(_localctx, 2);
				{
				setState(216);
				match(For);
				setState(217);
				match(LeftParen);
				setState(218);
				forInitStatement();
				setState(220);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0)) {
					{
					setState(219);
					condition();
					}
				}

				setState(222);
				match(Semi);
				setState(223);
				forIncrStatement();
				setState(224);
				match(RightParen);
				setState(225);
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
	}

	public final JumpStatementContext jumpStatement() throws RecognitionException {
		JumpStatementContext _localctx = new JumpStatementContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_jumpStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(235);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Return:
				{
				setState(229);
				match(Return);
				setState(231);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0)) {
					{
					setState(230);
					expression();
					}
				}

				}
				break;
			case Break:
				{
				setState(233);
				match(Break);
				}
				break;
			case Continue:
				{
				setState(234);
				match(Continue);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(237);
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
	}

	public final ConditionContext condition() throws RecognitionException {
		ConditionContext _localctx = new ConditionContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_condition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(239);
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
		public ForInitStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forInitStatement; }
	}

	public final ForInitStatementContext forInitStatement() throws RecognitionException {
		ForInitStatementContext _localctx = new ForInitStatementContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_forInitStatement);
		try {
			setState(243);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,21,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(241);
				expressionStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(242);
				declarationStatement();
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
	}

	public final ForIncrStatementContext forIncrStatement() throws RecognitionException {
		ForIncrStatementContext _localctx = new ForIncrStatementContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_forIncrStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(246);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0)) {
				{
				setState(245);
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
	}

	public final PrimaryExpressionContext primaryExpression() throws RecognitionException {
		PrimaryExpressionContext _localctx = new PrimaryExpressionContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_primaryExpression);
		try {
			setState(256);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Null:
			case True:
			case False:
			case IntegerLiteral:
			case StringLiteral:
				enterOuterAlt(_localctx, 1);
				{
				setState(248);
				literal();
				}
				break;
			case This:
				enterOuterAlt(_localctx, 2);
				{
				setState(249);
				match(This);
				}
				break;
			case LeftParen:
				enterOuterAlt(_localctx, 3);
				{
				setState(250);
				match(LeftParen);
				setState(251);
				expression();
				setState(252);
				match(RightParen);
				}
				break;
			case Identifier:
				enterOuterAlt(_localctx, 4);
				{
				setState(254);
				idExpression();
				}
				break;
			case LeftBracket:
				enterOuterAlt(_localctx, 5);
				{
				setState(255);
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
	}

	public final IdExpressionContext idExpression() throws RecognitionException {
		IdExpressionContext _localctx = new IdExpressionContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_idExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(258);
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
	}

	public final LambdaExpressionContext lambdaExpression() throws RecognitionException {
		LambdaExpressionContext _localctx = new LambdaExpressionContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_lambdaExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(260);
			lambdaIntroducer();
			setState(261);
			lambdaDeclarator();
			setState(262);
			match(Arrow);
			setState(263);
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
	}

	public final LambdaIntroducerContext lambdaIntroducer() throws RecognitionException {
		LambdaIntroducerContext _localctx = new LambdaIntroducerContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_lambdaIntroducer);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(265);
			match(LeftBracket);
			setState(266);
			match(And);
			setState(267);
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
	}

	public final LambdaDeclaratorContext lambdaDeclarator() throws RecognitionException {
		LambdaDeclaratorContext _localctx = new LambdaDeclaratorContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_lambdaDeclarator);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(274);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LeftParen) {
				{
				setState(269);
				match(LeftParen);
				setState(271);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Class) | (1L << Identifier))) != 0)) {
					{
					setState(270);
					functionParameterDef();
					}
				}

				setState(273);
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
			setState(277);
			primaryExpression();
			}
			_ctx.stop = _input.LT(-1);
			setState(297);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(295);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,27,_ctx) ) {
					case 1:
						{
						_localctx = new PostfixExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_postfixExpression);
						setState(279);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(280);
						match(LeftParen);
						setState(282);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Plus) | (1L << Star) | (1L << Not) | (1L << And) | (1L << Or) | (1L << Tilde) | (1L << PlusPlus) | (1L << MinusMinus) | (1L << LeftBracket) | (1L << LeftParen) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << IntegerLiteral) | (1L << StringLiteral) | (1L << Identifier))) != 0)) {
							{
							setState(281);
							expression();
							}
						}

						setState(284);
						match(RightParen);
						}
						break;
					case 2:
						{
						_localctx = new PostfixExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_postfixExpression);
						setState(285);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(286);
						match(LeftBracket);
						setState(287);
						expression();
						setState(288);
						match(RightBracket);
						}
						break;
					case 3:
						{
						_localctx = new PostfixExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_postfixExpression);
						setState(290);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(291);
						match(Dot);
						setState(292);
						idExpression();
						}
						break;
					case 4:
						{
						_localctx = new PostfixExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_postfixExpression);
						setState(293);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(294);
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
				setState(299);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
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
	}

	public final UnaryExpressionContext unaryExpression() throws RecognitionException {
		UnaryExpressionContext _localctx = new UnaryExpressionContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_unaryExpression);
		try {
			setState(308);
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
				setState(300);
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
				setState(304);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case PlusPlus:
					{
					setState(301);
					match(PlusPlus);
					}
					break;
				case MinusMinus:
					{
					setState(302);
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
					setState(303);
					unaryOperator();
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(306);
				unaryExpression();
				}
				break;
			case New:
				enterOuterAlt(_localctx, 3);
				{
				setState(307);
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
	}

	public final UnaryOperatorContext unaryOperator() throws RecognitionException {
		UnaryOperatorContext _localctx = new UnaryOperatorContext(_ctx, getState());
		enterRule(_localctx, 56, RULE_unaryOperator);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(310);
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
	}

	public final NewExpressionContext newExpression() throws RecognitionException {
		NewExpressionContext _localctx = new NewExpressionContext(_ctx, getState());
		enterRule(_localctx, 58, RULE_newExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(312);
			match(New);
			setState(316);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,31,_ctx) ) {
			case 1:
				{
				setState(313);
				buildInType();
				}
				break;
			case 2:
				{
				setState(314);
				match(Identifier);
				}
				break;
			case 3:
				{
				setState(315);
				newArrayType();
				}
				break;
			}
			setState(320);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LeftParen) {
				{
				setState(318);
				match(LeftParen);
				setState(319);
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
	}

	public final NewArrayTypeContext newArrayType() throws RecognitionException {
		NewArrayTypeContext _localctx = new NewArrayTypeContext(_ctx, getState());
		enterRule(_localctx, 60, RULE_newArrayType);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(324);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Int:
			case Bool:
			case String:
				{
				setState(322);
				buildInType();
				}
				break;
			case Identifier:
				{
				setState(323);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(330); 
			_errHandler.sync(this);
			_alt = 1;
			do {
				switch (_alt) {
				case 1:
					{
					{
					setState(326);
					match(LeftBracket);
					setState(327);
					expression();
					setState(328);
					match(RightBracket);
					}
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(332); 
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,34,_ctx);
			} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
			setState(338);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==LeftBracket) {
				{
				{
				setState(334);
				match(LeftBracket);
				setState(335);
				match(RightBracket);
				}
				}
				setState(340);
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
		public List<TerminalNode> Star() { return getTokens(MxLParser.Star); }
		public TerminalNode Star(int i) {
			return getToken(MxLParser.Star, i);
		}
		public List<TerminalNode> Div() { return getTokens(MxLParser.Div); }
		public TerminalNode Div(int i) {
			return getToken(MxLParser.Div, i);
		}
		public List<TerminalNode> Mod() { return getTokens(MxLParser.Mod); }
		public TerminalNode Mod(int i) {
			return getToken(MxLParser.Mod, i);
		}
		public MultiplicativeExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_multiplicativeExpression; }
	}

	public final MultiplicativeExpressionContext multiplicativeExpression() throws RecognitionException {
		MultiplicativeExpressionContext _localctx = new MultiplicativeExpressionContext(_ctx, getState());
		enterRule(_localctx, 62, RULE_multiplicativeExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(341);
			unaryExpression();
			setState(346);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Mod) | (1L << Star) | (1L << Div))) != 0)) {
				{
				{
				setState(342);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Mod) | (1L << Star) | (1L << Div))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(343);
				unaryExpression();
				}
				}
				setState(348);
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
		public List<TerminalNode> Plus() { return getTokens(MxLParser.Plus); }
		public TerminalNode Plus(int i) {
			return getToken(MxLParser.Plus, i);
		}
		public List<TerminalNode> Minus() { return getTokens(MxLParser.Minus); }
		public TerminalNode Minus(int i) {
			return getToken(MxLParser.Minus, i);
		}
		public AdditiveExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_additiveExpression; }
	}

	public final AdditiveExpressionContext additiveExpression() throws RecognitionException {
		AdditiveExpressionContext _localctx = new AdditiveExpressionContext(_ctx, getState());
		enterRule(_localctx, 64, RULE_additiveExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(349);
			multiplicativeExpression();
			setState(354);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Minus || _la==Plus) {
				{
				{
				setState(350);
				_la = _input.LA(1);
				if ( !(_la==Minus || _la==Plus) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(351);
				multiplicativeExpression();
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

	public static class ShiftExpressionContext extends ParserRuleContext {
		public List<AdditiveExpressionContext> additiveExpression() {
			return getRuleContexts(AdditiveExpressionContext.class);
		}
		public AdditiveExpressionContext additiveExpression(int i) {
			return getRuleContext(AdditiveExpressionContext.class,i);
		}
		public List<TerminalNode> RightShift() { return getTokens(MxLParser.RightShift); }
		public TerminalNode RightShift(int i) {
			return getToken(MxLParser.RightShift, i);
		}
		public List<TerminalNode> LeftShift() { return getTokens(MxLParser.LeftShift); }
		public TerminalNode LeftShift(int i) {
			return getToken(MxLParser.LeftShift, i);
		}
		public ShiftExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_shiftExpression; }
	}

	public final ShiftExpressionContext shiftExpression() throws RecognitionException {
		ShiftExpressionContext _localctx = new ShiftExpressionContext(_ctx, getState());
		enterRule(_localctx, 66, RULE_shiftExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(357);
			additiveExpression();
			setState(362);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==RightShift || _la==LeftShift) {
				{
				{
				setState(358);
				_la = _input.LA(1);
				if ( !(_la==RightShift || _la==LeftShift) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(359);
				additiveExpression();
				}
				}
				setState(364);
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
		public List<TerminalNode> Less() { return getTokens(MxLParser.Less); }
		public TerminalNode Less(int i) {
			return getToken(MxLParser.Less, i);
		}
		public List<TerminalNode> Greater() { return getTokens(MxLParser.Greater); }
		public TerminalNode Greater(int i) {
			return getToken(MxLParser.Greater, i);
		}
		public List<TerminalNode> LessEqual() { return getTokens(MxLParser.LessEqual); }
		public TerminalNode LessEqual(int i) {
			return getToken(MxLParser.LessEqual, i);
		}
		public List<TerminalNode> GreaterEqual() { return getTokens(MxLParser.GreaterEqual); }
		public TerminalNode GreaterEqual(int i) {
			return getToken(MxLParser.GreaterEqual, i);
		}
		public RelationalExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_relationalExpression; }
	}

	public final RelationalExpressionContext relationalExpression() throws RecognitionException {
		RelationalExpressionContext _localctx = new RelationalExpressionContext(_ctx, getState());
		enterRule(_localctx, 68, RULE_relationalExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(365);
			shiftExpression();
			setState(370);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Greater) | (1L << Less) | (1L << LessEqual) | (1L << GreaterEqual))) != 0)) {
				{
				{
				setState(366);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Greater) | (1L << Less) | (1L << LessEqual) | (1L << GreaterEqual))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(367);
				shiftExpression();
				}
				}
				setState(372);
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
		public List<TerminalNode> Equal() { return getTokens(MxLParser.Equal); }
		public TerminalNode Equal(int i) {
			return getToken(MxLParser.Equal, i);
		}
		public List<TerminalNode> NotEqual() { return getTokens(MxLParser.NotEqual); }
		public TerminalNode NotEqual(int i) {
			return getToken(MxLParser.NotEqual, i);
		}
		public EqualityExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_equalityExpression; }
	}

	public final EqualityExpressionContext equalityExpression() throws RecognitionException {
		EqualityExpressionContext _localctx = new EqualityExpressionContext(_ctx, getState());
		enterRule(_localctx, 70, RULE_equalityExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(373);
			relationalExpression();
			setState(378);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Equal || _la==NotEqual) {
				{
				{
				setState(374);
				_la = _input.LA(1);
				if ( !(_la==Equal || _la==NotEqual) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(375);
				relationalExpression();
				}
				}
				setState(380);
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
	}

	public final AndExpressionContext andExpression() throws RecognitionException {
		AndExpressionContext _localctx = new AndExpressionContext(_ctx, getState());
		enterRule(_localctx, 72, RULE_andExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(381);
			equalityExpression();
			setState(386);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==And) {
				{
				{
				setState(382);
				match(And);
				setState(383);
				equalityExpression();
				}
				}
				setState(388);
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
	}

	public final ExclusiveOrExpressionContext exclusiveOrExpression() throws RecognitionException {
		ExclusiveOrExpressionContext _localctx = new ExclusiveOrExpressionContext(_ctx, getState());
		enterRule(_localctx, 74, RULE_exclusiveOrExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(389);
			andExpression();
			setState(394);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Caret) {
				{
				{
				setState(390);
				match(Caret);
				setState(391);
				andExpression();
				}
				}
				setState(396);
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
	}

	public final InclusiveOrExpressionContext inclusiveOrExpression() throws RecognitionException {
		InclusiveOrExpressionContext _localctx = new InclusiveOrExpressionContext(_ctx, getState());
		enterRule(_localctx, 76, RULE_inclusiveOrExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(397);
			exclusiveOrExpression();
			setState(402);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Or) {
				{
				{
				setState(398);
				match(Or);
				setState(399);
				exclusiveOrExpression();
				}
				}
				setState(404);
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
	}

	public final LogicalAndExpressionContext logicalAndExpression() throws RecognitionException {
		LogicalAndExpressionContext _localctx = new LogicalAndExpressionContext(_ctx, getState());
		enterRule(_localctx, 78, RULE_logicalAndExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(405);
			inclusiveOrExpression();
			setState(410);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==AndAnd) {
				{
				{
				setState(406);
				match(AndAnd);
				setState(407);
				inclusiveOrExpression();
				}
				}
				setState(412);
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
	}

	public final LogicalOrExpressionContext logicalOrExpression() throws RecognitionException {
		LogicalOrExpressionContext _localctx = new LogicalOrExpressionContext(_ctx, getState());
		enterRule(_localctx, 80, RULE_logicalOrExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(413);
			logicalAndExpression();
			setState(418);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==OrOr) {
				{
				{
				setState(414);
				match(OrOr);
				setState(415);
				logicalAndExpression();
				}
				}
				setState(420);
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
		public List<TerminalNode> Assign() { return getTokens(MxLParser.Assign); }
		public TerminalNode Assign(int i) {
			return getToken(MxLParser.Assign, i);
		}
		public List<AssignmentExpressionContext> assignmentExpression() {
			return getRuleContexts(AssignmentExpressionContext.class);
		}
		public AssignmentExpressionContext assignmentExpression(int i) {
			return getRuleContext(AssignmentExpressionContext.class,i);
		}
		public AssignmentExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignmentExpression; }
	}

	public final AssignmentExpressionContext assignmentExpression() throws RecognitionException {
		AssignmentExpressionContext _localctx = new AssignmentExpressionContext(_ctx, getState());
		enterRule(_localctx, 82, RULE_assignmentExpression);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(421);
			logicalOrExpression();
			setState(426);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,46,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(422);
					match(Assign);
					setState(423);
					assignmentExpression();
					}
					} 
				}
				setState(428);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,46,_ctx);
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
	}

	public final ExpressionContext expression() throws RecognitionException {
		ExpressionContext _localctx = new ExpressionContext(_ctx, getState());
		enterRule(_localctx, 84, RULE_expression);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(429);
			assignmentExpression();
			setState(434);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,47,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(430);
					match(Comma);
					setState(431);
					assignmentExpression();
					}
					} 
				}
				setState(436);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,47,_ctx);
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
	}

	public final ClassSpecifierContext classSpecifier() throws RecognitionException {
		ClassSpecifierContext _localctx = new ClassSpecifierContext(_ctx, getState());
		enterRule(_localctx, 86, RULE_classSpecifier);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(437);
			classHead();
			setState(438);
			match(LeftBrace);
			setState(442);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Semi) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << Void) | (1L << Class) | (1L << Identifier))) != 0)) {
				{
				{
				setState(439);
				memberDeclaration();
				}
				}
				setState(444);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(445);
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
	}

	public final ClassHeadContext classHead() throws RecognitionException {
		ClassHeadContext _localctx = new ClassHeadContext(_ctx, getState());
		enterRule(_localctx, 88, RULE_classHead);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(447);
			match(Class);
			setState(448);
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
	}

	public final MemberDeclarationContext memberDeclaration() throws RecognitionException {
		MemberDeclarationContext _localctx = new MemberDeclarationContext(_ctx, getState());
		enterRule(_localctx, 90, RULE_memberDeclaration);
		try {
			setState(454);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,49,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(450);
				functionDefinition();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(451);
				declarationStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(452);
				constructFunctionDefinition();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(453);
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
	}

	public final ConstructFunctionDefinitionContext constructFunctionDefinition() throws RecognitionException {
		ConstructFunctionDefinitionContext _localctx = new ConstructFunctionDefinitionContext(_ctx, getState());
		enterRule(_localctx, 92, RULE_constructFunctionDefinition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(456);
			match(Identifier);
			setState(457);
			match(LeftParen);
			setState(458);
			match(RightParen);
			setState(459);
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
	}

	public final TheOperatorContext theOperator() throws RecognitionException {
		TheOperatorContext _localctx = new TheOperatorContext(_ctx, getState());
		enterRule(_localctx, 94, RULE_theOperator);
		int _la;
		try {
			setState(494);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case New:
				enterOuterAlt(_localctx, 1);
				{
				setState(461);
				match(New);
				setState(464);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==LeftBracket) {
					{
					setState(462);
					match(LeftBracket);
					setState(463);
					match(RightBracket);
					}
				}

				}
				break;
			case Plus:
				enterOuterAlt(_localctx, 2);
				{
				setState(466);
				match(Plus);
				}
				break;
			case Minus:
				enterOuterAlt(_localctx, 3);
				{
				setState(467);
				match(Minus);
				}
				break;
			case Star:
				enterOuterAlt(_localctx, 4);
				{
				setState(468);
				match(Star);
				}
				break;
			case Div:
				enterOuterAlt(_localctx, 5);
				{
				setState(469);
				match(Div);
				}
				break;
			case Mod:
				enterOuterAlt(_localctx, 6);
				{
				setState(470);
				match(Mod);
				}
				break;
			case Caret:
				enterOuterAlt(_localctx, 7);
				{
				setState(471);
				match(Caret);
				}
				break;
			case And:
				enterOuterAlt(_localctx, 8);
				{
				setState(472);
				match(And);
				}
				break;
			case Or:
				enterOuterAlt(_localctx, 9);
				{
				setState(473);
				match(Or);
				}
				break;
			case Tilde:
				enterOuterAlt(_localctx, 10);
				{
				setState(474);
				match(Tilde);
				}
				break;
			case Not:
				enterOuterAlt(_localctx, 11);
				{
				setState(475);
				match(Not);
				}
				break;
			case Assign:
				enterOuterAlt(_localctx, 12);
				{
				setState(476);
				match(Assign);
				}
				break;
			case Greater:
				enterOuterAlt(_localctx, 13);
				{
				setState(477);
				match(Greater);
				}
				break;
			case Less:
				enterOuterAlt(_localctx, 14);
				{
				setState(478);
				match(Less);
				}
				break;
			case GreaterEqual:
				enterOuterAlt(_localctx, 15);
				{
				setState(479);
				match(GreaterEqual);
				}
				break;
			case LessEqual:
				enterOuterAlt(_localctx, 16);
				{
				setState(480);
				match(LessEqual);
				}
				break;
			case RightShift:
				enterOuterAlt(_localctx, 17);
				{
				setState(481);
				match(RightShift);
				}
				break;
			case LeftShift:
				enterOuterAlt(_localctx, 18);
				{
				setState(482);
				match(LeftShift);
				}
				break;
			case Equal:
				enterOuterAlt(_localctx, 19);
				{
				setState(483);
				match(Equal);
				}
				break;
			case NotEqual:
				enterOuterAlt(_localctx, 20);
				{
				setState(484);
				match(NotEqual);
				}
				break;
			case AndAnd:
				enterOuterAlt(_localctx, 21);
				{
				setState(485);
				match(AndAnd);
				}
				break;
			case OrOr:
				enterOuterAlt(_localctx, 22);
				{
				setState(486);
				match(OrOr);
				}
				break;
			case PlusPlus:
				enterOuterAlt(_localctx, 23);
				{
				setState(487);
				match(PlusPlus);
				}
				break;
			case MinusMinus:
				enterOuterAlt(_localctx, 24);
				{
				setState(488);
				match(MinusMinus);
				}
				break;
			case Comma:
				enterOuterAlt(_localctx, 25);
				{
				setState(489);
				match(Comma);
				}
				break;
			case LeftParen:
				enterOuterAlt(_localctx, 26);
				{
				setState(490);
				match(LeftParen);
				setState(491);
				match(RightParen);
				}
				break;
			case LeftBracket:
				enterOuterAlt(_localctx, 27);
				{
				setState(492);
				match(LeftBracket);
				setState(493);
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
	}

	public final LiteralContext literal() throws RecognitionException {
		LiteralContext _localctx = new LiteralContext(_ctx, getState());
		enterRule(_localctx, 96, RULE_literal);
		int _la;
		try {
			setState(500);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case IntegerLiteral:
				enterOuterAlt(_localctx, 1);
				{
				setState(496);
				match(IntegerLiteral);
				}
				break;
			case StringLiteral:
				enterOuterAlt(_localctx, 2);
				{
				setState(497);
				match(StringLiteral);
				}
				break;
			case True:
			case False:
				enterOuterAlt(_localctx, 3);
				{
				setState(498);
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
				setState(499);
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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3<\u01f9\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\3\2\7\2f\n\2\f\2"+
		"\16\2i\13\2\3\2\3\2\3\3\3\3\5\3o\n\3\3\3\3\3\6\3s\n\3\r\3\16\3t\3\4\3"+
		"\4\3\4\3\4\5\4{\n\4\3\5\3\5\3\6\3\6\3\6\3\6\5\6\u0083\n\6\3\7\3\7\5\7"+
		"\u0087\n\7\3\b\3\b\3\b\3\b\5\b\u008d\n\b\3\b\3\b\3\b\3\t\3\t\3\t\3\t\3"+
		"\t\3\t\7\t\u0098\n\t\f\t\16\t\u009b\13\t\3\n\3\n\5\n\u009f\n\n\3\n\5\n"+
		"\u00a2\n\n\3\n\3\n\3\13\3\13\3\13\7\13\u00a9\n\13\f\13\16\13\u00ac\13"+
		"\13\3\f\3\f\3\f\5\f\u00b1\n\f\3\r\3\r\3\r\3\r\3\r\3\r\3\r\5\r\u00ba\n"+
		"\r\3\16\6\16\u00bd\n\16\r\16\16\16\u00be\3\17\3\17\5\17\u00c3\n\17\3\17"+
		"\3\17\3\20\5\20\u00c8\n\20\3\20\3\20\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\5\21\u00d3\n\21\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\5\22"+
		"\u00df\n\22\3\22\3\22\3\22\3\22\3\22\5\22\u00e6\n\22\3\23\3\23\5\23\u00ea"+
		"\n\23\3\23\3\23\5\23\u00ee\n\23\3\23\3\23\3\24\3\24\3\25\3\25\5\25\u00f6"+
		"\n\25\3\26\5\26\u00f9\n\26\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\27\5\27"+
		"\u0103\n\27\3\30\3\30\3\31\3\31\3\31\3\31\3\31\3\32\3\32\3\32\3\32\3\33"+
		"\3\33\5\33\u0112\n\33\3\33\5\33\u0115\n\33\3\34\3\34\3\34\3\34\3\34\3"+
		"\34\5\34\u011d\n\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34"+
		"\3\34\7\34\u012a\n\34\f\34\16\34\u012d\13\34\3\35\3\35\3\35\3\35\5\35"+
		"\u0133\n\35\3\35\3\35\5\35\u0137\n\35\3\36\3\36\3\37\3\37\3\37\3\37\5"+
		"\37\u013f\n\37\3\37\3\37\5\37\u0143\n\37\3 \3 \5 \u0147\n \3 \3 \3 \3"+
		" \6 \u014d\n \r \16 \u014e\3 \3 \7 \u0153\n \f \16 \u0156\13 \3!\3!\3"+
		"!\7!\u015b\n!\f!\16!\u015e\13!\3\"\3\"\3\"\7\"\u0163\n\"\f\"\16\"\u0166"+
		"\13\"\3#\3#\3#\7#\u016b\n#\f#\16#\u016e\13#\3$\3$\3$\7$\u0173\n$\f$\16"+
		"$\u0176\13$\3%\3%\3%\7%\u017b\n%\f%\16%\u017e\13%\3&\3&\3&\7&\u0183\n"+
		"&\f&\16&\u0186\13&\3\'\3\'\3\'\7\'\u018b\n\'\f\'\16\'\u018e\13\'\3(\3"+
		"(\3(\7(\u0193\n(\f(\16(\u0196\13(\3)\3)\3)\7)\u019b\n)\f)\16)\u019e\13"+
		")\3*\3*\3*\7*\u01a3\n*\f*\16*\u01a6\13*\3+\3+\3+\7+\u01ab\n+\f+\16+\u01ae"+
		"\13+\3,\3,\3,\7,\u01b3\n,\f,\16,\u01b6\13,\3-\3-\3-\7-\u01bb\n-\f-\16"+
		"-\u01be\13-\3-\3-\3.\3.\3.\3/\3/\3/\3/\5/\u01c9\n/\3\60\3\60\3\60\3\60"+
		"\3\60\3\61\3\61\3\61\5\61\u01d3\n\61\3\61\3\61\3\61\3\61\3\61\3\61\3\61"+
		"\3\61\3\61\3\61\3\61\3\61\3\61\3\61\3\61\3\61\3\61\3\61\3\61\3\61\3\61"+
		"\3\61\3\61\3\61\3\61\3\61\3\61\3\61\5\61\u01f1\n\61\3\62\3\62\3\62\3\62"+
		"\5\62\u01f7\n\62\3\62\2\3\66\63\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36"+
		" \"$&(*,.\60\62\64\668:<>@BDFHJLNPRTVXZ\\^`b\2\13\3\2\')\3\2\30\31\5\2"+
		"\4\6\16\16\21\23\4\2\3\3\6\7\3\2\4\5\3\2\25\26\4\2\b\t\f\r\3\2\n\13\3"+
		"\2,-\2\u022b\2g\3\2\2\2\4n\3\2\2\2\6z\3\2\2\2\b|\3\2\2\2\n\u0082\3\2\2"+
		"\2\f\u0086\3\2\2\2\16\u0088\3\2\2\2\20\u0091\3\2\2\2\22\u009e\3\2\2\2"+
		"\24\u00a5\3\2\2\2\26\u00ad\3\2\2\2\30\u00b9\3\2\2\2\32\u00bc\3\2\2\2\34"+
		"\u00c0\3\2\2\2\36\u00c7\3\2\2\2 \u00cb\3\2\2\2\"\u00e5\3\2\2\2$\u00ed"+
		"\3\2\2\2&\u00f1\3\2\2\2(\u00f5\3\2\2\2*\u00f8\3\2\2\2,\u0102\3\2\2\2."+
		"\u0104\3\2\2\2\60\u0106\3\2\2\2\62\u010b\3\2\2\2\64\u0114\3\2\2\2\66\u0116"+
		"\3\2\2\28\u0136\3\2\2\2:\u0138\3\2\2\2<\u013a\3\2\2\2>\u0146\3\2\2\2@"+
		"\u0157\3\2\2\2B\u015f\3\2\2\2D\u0167\3\2\2\2F\u016f\3\2\2\2H\u0177\3\2"+
		"\2\2J\u017f\3\2\2\2L\u0187\3\2\2\2N\u018f\3\2\2\2P\u0197\3\2\2\2R\u019f"+
		"\3\2\2\2T\u01a7\3\2\2\2V\u01af\3\2\2\2X\u01b7\3\2\2\2Z\u01c1\3\2\2\2\\"+
		"\u01c8\3\2\2\2^\u01ca\3\2\2\2`\u01f0\3\2\2\2b\u01f6\3\2\2\2df\5\f\7\2"+
		"ed\3\2\2\2fi\3\2\2\2ge\3\2\2\2gh\3\2\2\2hj\3\2\2\2ig\3\2\2\2jk\7\2\2\3"+
		"k\3\3\2\2\2lo\5\b\5\2mo\7<\2\2nl\3\2\2\2nm\3\2\2\2or\3\2\2\2pq\7\33\2"+
		"\2qs\7\34\2\2rp\3\2\2\2st\3\2\2\2tr\3\2\2\2tu\3\2\2\2u\5\3\2\2\2v{\5\b"+
		"\5\2w{\7<\2\2x{\5X-\2y{\5\4\3\2zv\3\2\2\2zw\3\2\2\2zx\3\2\2\2zy\3\2\2"+
		"\2{\7\3\2\2\2|}\t\2\2\2}\t\3\2\2\2~\u0083\7+\2\2\177\u0083\5\b\5\2\u0080"+
		"\u0083\7<\2\2\u0081\u0083\5\4\3\2\u0082~\3\2\2\2\u0082\177\3\2\2\2\u0082"+
		"\u0080\3\2\2\2\u0082\u0081\3\2\2\2\u0083\13\3\2\2\2\u0084\u0087\5\22\n"+
		"\2\u0085\u0087\5\16\b\2\u0086\u0084\3\2\2\2\u0086\u0085\3\2\2\2\u0087"+
		"\r\3\2\2\2\u0088\u0089\5\n\6\2\u0089\u008a\7<\2\2\u008a\u008c\7\35\2\2"+
		"\u008b\u008d\5\20\t\2\u008c\u008b\3\2\2\2\u008c\u008d\3\2\2\2\u008d\u008e"+
		"\3\2\2\2\u008e\u008f\7\36\2\2\u008f\u0090\5\34\17\2\u0090\17\3\2\2\2\u0091"+
		"\u0092\5\6\4\2\u0092\u0099\7<\2\2\u0093\u0094\7 \2\2\u0094\u0095\5\6\4"+
		"\2\u0095\u0096\7<\2\2\u0096\u0098\3\2\2\2\u0097\u0093\3\2\2\2\u0098\u009b"+
		"\3\2\2\2\u0099\u0097\3\2\2\2\u0099\u009a\3\2\2\2\u009a\21\3\2\2\2\u009b"+
		"\u0099\3\2\2\2\u009c\u009f\5\4\3\2\u009d\u009f\5\6\4\2\u009e\u009c\3\2"+
		"\2\2\u009e\u009d\3\2\2\2\u009f\u00a1\3\2\2\2\u00a0\u00a2\5\24\13\2\u00a1"+
		"\u00a0\3\2\2\2\u00a1\u00a2\3\2\2\2\u00a2\u00a3\3\2\2\2\u00a3\u00a4\7\37"+
		"\2\2\u00a4\23\3\2\2\2\u00a5\u00aa\5\26\f\2\u00a6\u00a7\7 \2\2\u00a7\u00a9"+
		"\5\26\f\2\u00a8\u00a6\3\2\2\2\u00a9\u00ac\3\2\2\2\u00aa\u00a8\3\2\2\2"+
		"\u00aa\u00ab\3\2\2\2\u00ab\25\3\2\2\2\u00ac\u00aa\3\2\2\2\u00ad\u00b0"+
		"\7<\2\2\u00ae\u00af\7\27\2\2\u00af\u00b1\5V,\2\u00b0\u00ae\3\2\2\2\u00b0"+
		"\u00b1\3\2\2\2\u00b1\27\3\2\2\2\u00b2\u00ba\5\22\n\2\u00b3\u00ba\5\36"+
		"\20\2\u00b4\u00ba\5\34\17\2\u00b5\u00ba\5 \21\2\u00b6\u00ba\5\"\22\2\u00b7"+
		"\u00ba\5$\23\2\u00b8\u00ba\7\37\2\2\u00b9\u00b2\3\2\2\2\u00b9\u00b3\3"+
		"\2\2\2\u00b9\u00b4\3\2\2\2\u00b9\u00b5\3\2\2\2\u00b9\u00b6\3\2\2\2\u00b9"+
		"\u00b7\3\2\2\2\u00b9\u00b8\3\2\2\2\u00ba\31\3\2\2\2\u00bb\u00bd\5\30\r"+
		"\2\u00bc\u00bb\3\2\2\2\u00bd\u00be\3\2\2\2\u00be\u00bc\3\2\2\2\u00be\u00bf"+
		"\3\2\2\2\u00bf\33\3\2\2\2\u00c0\u00c2\7!\2\2\u00c1\u00c3\5\32\16\2\u00c2"+
		"\u00c1\3\2\2\2\u00c2\u00c3\3\2\2\2\u00c3\u00c4\3\2\2\2\u00c4\u00c5\7\""+
		"\2\2\u00c5\35\3\2\2\2\u00c6\u00c8\5V,\2\u00c7\u00c6\3\2\2\2\u00c7\u00c8"+
		"\3\2\2\2\u00c8\u00c9\3\2\2\2\u00c9\u00ca\7\37\2\2\u00ca\37\3\2\2\2\u00cb"+
		"\u00cc\7.\2\2\u00cc\u00cd\7\35\2\2\u00cd\u00ce\5&\24\2\u00ce\u00cf\7\36"+
		"\2\2\u00cf\u00d2\5\30\r\2\u00d0\u00d1\7/\2\2\u00d1\u00d3\5\30\r\2\u00d2"+
		"\u00d0\3\2\2\2\u00d2\u00d3\3\2\2\2\u00d3!\3\2\2\2\u00d4\u00d5\7\61\2\2"+
		"\u00d5\u00d6\7\35\2\2\u00d6\u00d7\5&\24\2\u00d7\u00d8\7\36\2\2\u00d8\u00d9"+
		"\5\30\r\2\u00d9\u00e6\3\2\2\2\u00da\u00db\7\60\2\2\u00db\u00dc\7\35\2"+
		"\2\u00dc\u00de\5(\25\2\u00dd\u00df\5&\24\2\u00de\u00dd\3\2\2\2\u00de\u00df"+
		"\3\2\2\2\u00df\u00e0\3\2\2\2\u00e0\u00e1\7\37\2\2\u00e1\u00e2\5*\26\2"+
		"\u00e2\u00e3\7\36\2\2\u00e3\u00e4\5\30\r\2\u00e4\u00e6\3\2\2\2\u00e5\u00d4"+
		"\3\2\2\2\u00e5\u00da\3\2\2\2\u00e6#\3\2\2\2\u00e7\u00e9\7\64\2\2\u00e8"+
		"\u00ea\5V,\2\u00e9\u00e8\3\2\2\2\u00e9\u00ea\3\2\2\2\u00ea\u00ee\3\2\2"+
		"\2\u00eb\u00ee\7\62\2\2\u00ec\u00ee\7\63\2\2\u00ed\u00e7\3\2\2\2\u00ed"+
		"\u00eb\3\2\2\2\u00ed\u00ec\3\2\2\2\u00ee\u00ef\3\2\2\2\u00ef\u00f0\7\37"+
		"\2\2\u00f0%\3\2\2\2\u00f1\u00f2\5V,\2\u00f2\'\3\2\2\2\u00f3\u00f6\5\36"+
		"\20\2\u00f4\u00f6\5\22\n\2\u00f5\u00f3\3\2\2\2\u00f5\u00f4\3\2\2\2\u00f6"+
		")\3\2\2\2\u00f7\u00f9\5V,\2\u00f8\u00f7\3\2\2\2\u00f8\u00f9\3\2\2\2\u00f9"+
		"+\3\2\2\2\u00fa\u0103\5b\62\2\u00fb\u0103\7\67\2\2\u00fc\u00fd\7\35\2"+
		"\2\u00fd\u00fe\5V,\2\u00fe\u00ff\7\36\2\2\u00ff\u0103\3\2\2\2\u0100\u0103"+
		"\5.\30\2\u0101\u0103\5\60\31\2\u0102\u00fa\3\2\2\2\u0102\u00fb\3\2\2\2"+
		"\u0102\u00fc\3\2\2\2\u0102\u0100\3\2\2\2\u0102\u0101\3\2\2\2\u0103-\3"+
		"\2\2\2\u0104\u0105\7<\2\2\u0105/\3\2\2\2\u0106\u0107\5\62\32\2\u0107\u0108"+
		"\5\64\33\2\u0108\u0109\78\2\2\u0109\u010a\5\34\17\2\u010a\61\3\2\2\2\u010b"+
		"\u010c\7\33\2\2\u010c\u010d\7\21\2\2\u010d\u010e\7\34\2\2\u010e\63\3\2"+
		"\2\2\u010f\u0111\7\35\2\2\u0110\u0112\5\20\t\2\u0111\u0110\3\2\2\2\u0111"+
		"\u0112\3\2\2\2\u0112\u0113\3\2\2\2\u0113\u0115\7\36\2\2\u0114\u010f\3"+
		"\2\2\2\u0114\u0115\3\2\2\2\u0115\65\3\2\2\2\u0116\u0117\b\34\1\2\u0117"+
		"\u0118\5,\27\2\u0118\u012b\3\2\2\2\u0119\u011a\f\6\2\2\u011a\u011c\7\35"+
		"\2\2\u011b\u011d\5V,\2\u011c\u011b\3\2\2\2\u011c\u011d\3\2\2\2\u011d\u011e"+
		"\3\2\2\2\u011e\u012a\7\36\2\2\u011f\u0120\f\5\2\2\u0120\u0121\7\33\2\2"+
		"\u0121\u0122\5V,\2\u0122\u0123\7\34\2\2\u0123\u012a\3\2\2\2\u0124\u0125"+
		"\f\4\2\2\u0125\u0126\7\32\2\2\u0126\u012a\5.\30\2\u0127\u0128\f\3\2\2"+
		"\u0128\u012a\t\3\2\2\u0129\u0119\3\2\2\2\u0129\u011f\3\2\2\2\u0129\u0124"+
		"\3\2\2\2\u0129\u0127\3\2\2\2\u012a\u012d\3\2\2\2\u012b\u0129\3\2\2\2\u012b"+
		"\u012c\3\2\2\2\u012c\67\3\2\2\2\u012d\u012b\3\2\2\2\u012e\u0137\5\66\34"+
		"\2\u012f\u0133\7\30\2\2\u0130\u0133\7\31\2\2\u0131\u0133\5:\36\2\u0132"+
		"\u012f\3\2\2\2\u0132\u0130\3\2\2\2\u0132\u0131\3\2\2\2\u0133\u0134\3\2"+
		"\2\2\u0134\u0137\58\35\2\u0135\u0137\5<\37\2\u0136\u012e\3\2\2\2\u0136"+
		"\u0132\3\2\2\2\u0136\u0135\3\2\2\2\u01379\3\2\2\2\u0138\u0139\t\4\2\2"+
		"\u0139;\3\2\2\2\u013a\u013e\7\65\2\2\u013b\u013f\5\b\5\2\u013c\u013f\7"+
		"<\2\2\u013d\u013f\5> \2\u013e\u013b\3\2\2\2\u013e\u013c\3\2\2\2\u013e"+
		"\u013d\3\2\2\2\u013f\u0142\3\2\2\2\u0140\u0141\7\35\2\2\u0141\u0143\7"+
		"\36\2\2\u0142\u0140\3\2\2\2\u0142\u0143\3\2\2\2\u0143=\3\2\2\2\u0144\u0147"+
		"\5\b\5\2\u0145\u0147\7<\2\2\u0146\u0144\3\2\2\2\u0146\u0145\3\2\2\2\u0147"+
		"\u014c\3\2\2\2\u0148\u0149\7\33\2\2\u0149\u014a\5V,\2\u014a\u014b\7\34"+
		"\2\2\u014b\u014d\3\2\2\2\u014c\u0148\3\2\2\2\u014d\u014e\3\2\2\2\u014e"+
		"\u014c\3\2\2\2\u014e\u014f\3\2\2\2\u014f\u0154\3\2\2\2\u0150\u0151\7\33"+
		"\2\2\u0151\u0153\7\34\2\2\u0152\u0150\3\2\2\2\u0153\u0156\3\2\2\2\u0154"+
		"\u0152\3\2\2\2\u0154\u0155\3\2\2\2\u0155?\3\2\2\2\u0156\u0154\3\2\2\2"+
		"\u0157\u015c\58\35\2\u0158\u0159\t\5\2\2\u0159\u015b\58\35\2\u015a\u0158"+
		"\3\2\2\2\u015b\u015e\3\2\2\2\u015c\u015a\3\2\2\2\u015c\u015d\3\2\2\2\u015d"+
		"A\3\2\2\2\u015e\u015c\3\2\2\2\u015f\u0164\5@!\2\u0160\u0161\t\6\2\2\u0161"+
		"\u0163\5@!\2\u0162\u0160\3\2\2\2\u0163\u0166\3\2\2\2\u0164\u0162\3\2\2"+
		"\2\u0164\u0165\3\2\2\2\u0165C\3\2\2\2\u0166\u0164\3\2\2\2\u0167\u016c"+
		"\5B\"\2\u0168\u0169\t\7\2\2\u0169\u016b\5B\"\2\u016a\u0168\3\2\2\2\u016b"+
		"\u016e\3\2\2\2\u016c\u016a\3\2\2\2\u016c\u016d\3\2\2\2\u016dE\3\2\2\2"+
		"\u016e\u016c\3\2\2\2\u016f\u0174\5D#\2\u0170\u0171\t\b\2\2\u0171\u0173"+
		"\5D#\2\u0172\u0170\3\2\2\2\u0173\u0176\3\2\2\2\u0174\u0172\3\2\2\2\u0174"+
		"\u0175\3\2\2\2\u0175G\3\2\2\2\u0176\u0174\3\2\2\2\u0177\u017c\5F$\2\u0178"+
		"\u0179\t\t\2\2\u0179\u017b\5F$\2\u017a\u0178\3\2\2\2\u017b\u017e\3\2\2"+
		"\2\u017c\u017a\3\2\2\2\u017c\u017d\3\2\2\2\u017dI\3\2\2\2\u017e\u017c"+
		"\3\2\2\2\u017f\u0184\5H%\2\u0180\u0181\7\21\2\2\u0181\u0183\5H%\2\u0182"+
		"\u0180\3\2\2\2\u0183\u0186\3\2\2\2\u0184\u0182\3\2\2\2\u0184\u0185\3\2"+
		"\2\2\u0185K\3\2\2\2\u0186\u0184\3\2\2\2\u0187\u018c\5J&\2\u0188\u0189"+
		"\7\24\2\2\u0189\u018b\5J&\2\u018a\u0188\3\2\2\2\u018b\u018e\3\2\2\2\u018c"+
		"\u018a\3\2\2\2\u018c\u018d\3\2\2\2\u018dM\3\2\2\2\u018e\u018c\3\2\2\2"+
		"\u018f\u0194\5L\'\2\u0190\u0191\7\22\2\2\u0191\u0193\5L\'\2\u0192\u0190"+
		"\3\2\2\2\u0193\u0196\3\2\2\2\u0194\u0192\3\2\2\2\u0194\u0195\3\2\2\2\u0195"+
		"O\3\2\2\2\u0196\u0194\3\2\2\2\u0197\u019c\5N(\2\u0198\u0199\7\17\2\2\u0199"+
		"\u019b\5N(\2\u019a\u0198\3\2\2\2\u019b\u019e\3\2\2\2\u019c\u019a\3\2\2"+
		"\2\u019c\u019d\3\2\2\2\u019dQ\3\2\2\2\u019e\u019c\3\2\2\2\u019f\u01a4"+
		"\5P)\2\u01a0\u01a1\7\20\2\2\u01a1\u01a3\5P)\2\u01a2\u01a0\3\2\2\2\u01a3"+
		"\u01a6\3\2\2\2\u01a4\u01a2\3\2\2\2\u01a4\u01a5\3\2\2\2\u01a5S\3\2\2\2"+
		"\u01a6\u01a4\3\2\2\2\u01a7\u01ac\5R*\2\u01a8\u01a9\7\27\2\2\u01a9\u01ab"+
		"\5T+\2\u01aa\u01a8\3\2\2\2\u01ab\u01ae\3\2\2\2\u01ac\u01aa\3\2\2\2\u01ac"+
		"\u01ad\3\2\2\2\u01adU\3\2\2\2\u01ae\u01ac\3\2\2\2\u01af\u01b4\5T+\2\u01b0"+
		"\u01b1\7 \2\2\u01b1\u01b3\5T+\2\u01b2\u01b0\3\2\2\2\u01b3\u01b6\3\2\2"+
		"\2\u01b4\u01b2\3\2\2\2\u01b4\u01b5\3\2\2\2\u01b5W\3\2\2\2\u01b6\u01b4"+
		"\3\2\2\2\u01b7\u01b8\5Z.\2\u01b8\u01bc\7!\2\2\u01b9\u01bb\5\\/\2\u01ba"+
		"\u01b9\3\2\2\2\u01bb\u01be\3\2\2\2\u01bc\u01ba\3\2\2\2\u01bc\u01bd\3\2"+
		"\2\2\u01bd\u01bf\3\2\2\2\u01be\u01bc\3\2\2\2\u01bf\u01c0\7\"\2\2\u01c0"+
		"Y\3\2\2\2\u01c1\u01c2\7\66\2\2\u01c2\u01c3\7<\2\2\u01c3[\3\2\2\2\u01c4"+
		"\u01c9\5\16\b\2\u01c5\u01c9\5\22\n\2\u01c6\u01c9\5^\60\2\u01c7\u01c9\7"+
		"\37\2\2\u01c8\u01c4\3\2\2\2\u01c8\u01c5\3\2\2\2\u01c8\u01c6\3\2\2\2\u01c8"+
		"\u01c7\3\2\2\2\u01c9]\3\2\2\2\u01ca\u01cb\7<\2\2\u01cb\u01cc\7\35\2\2"+
		"\u01cc\u01cd\7\36\2\2\u01cd\u01ce\5\34\17\2\u01ce_\3\2\2\2\u01cf\u01d2"+
		"\7\65\2\2\u01d0\u01d1\7\33\2\2\u01d1\u01d3\7\34\2\2\u01d2\u01d0\3\2\2"+
		"\2\u01d2\u01d3\3\2\2\2\u01d3\u01f1\3\2\2\2\u01d4\u01f1\7\5\2\2\u01d5\u01f1"+
		"\7\4\2\2\u01d6\u01f1\7\6\2\2\u01d7\u01f1\7\7\2\2\u01d8\u01f1\7\3\2\2\u01d9"+
		"\u01f1\7\24\2\2\u01da\u01f1\7\21\2\2\u01db\u01f1\7\22\2\2\u01dc\u01f1"+
		"\7\23\2\2\u01dd\u01f1\7\16\2\2\u01de\u01f1\7\27\2\2\u01df\u01f1\7\b\2"+
		"\2\u01e0\u01f1\7\t\2\2\u01e1\u01f1\7\r\2\2\u01e2\u01f1\7\f\2\2\u01e3\u01f1"+
		"\7\25\2\2\u01e4\u01f1\7\26\2\2\u01e5\u01f1\7\n\2\2\u01e6\u01f1\7\13\2"+
		"\2\u01e7\u01f1\7\17\2\2\u01e8\u01f1\7\20\2\2\u01e9\u01f1\7\30\2\2\u01ea"+
		"\u01f1\7\31\2\2\u01eb\u01f1\7 \2\2\u01ec\u01ed\7\35\2\2\u01ed\u01f1\7"+
		"\36\2\2\u01ee\u01ef\7\33\2\2\u01ef\u01f1\7\34\2\2\u01f0\u01cf\3\2\2\2"+
		"\u01f0\u01d4\3\2\2\2\u01f0\u01d5\3\2\2\2\u01f0\u01d6\3\2\2\2\u01f0\u01d7"+
		"\3\2\2\2\u01f0\u01d8\3\2\2\2\u01f0\u01d9\3\2\2\2\u01f0\u01da\3\2\2\2\u01f0"+
		"\u01db\3\2\2\2\u01f0\u01dc\3\2\2\2\u01f0\u01dd\3\2\2\2\u01f0\u01de\3\2"+
		"\2\2\u01f0\u01df\3\2\2\2\u01f0\u01e0\3\2\2\2\u01f0\u01e1\3\2\2\2\u01f0"+
		"\u01e2\3\2\2\2\u01f0\u01e3\3\2\2\2\u01f0\u01e4\3\2\2\2\u01f0\u01e5\3\2"+
		"\2\2\u01f0\u01e6\3\2\2\2\u01f0\u01e7\3\2\2\2\u01f0\u01e8\3\2\2\2\u01f0"+
		"\u01e9\3\2\2\2\u01f0\u01ea\3\2\2\2\u01f0\u01eb\3\2\2\2\u01f0\u01ec\3\2"+
		"\2\2\u01f0\u01ee\3\2\2\2\u01f1a\3\2\2\2\u01f2\u01f7\7:\2\2\u01f3\u01f7"+
		"\7;\2\2\u01f4\u01f7\t\n\2\2\u01f5\u01f7\7*\2\2\u01f6\u01f2\3\2\2\2\u01f6"+
		"\u01f3\3\2\2\2\u01f6\u01f4\3\2\2\2\u01f6\u01f5\3\2\2\2\u01f7c\3\2\2\2"+
		"\67gntz\u0082\u0086\u008c\u0099\u009e\u00a1\u00aa\u00b0\u00b9\u00be\u00c2"+
		"\u00c7\u00d2\u00de\u00e5\u00e9\u00ed\u00f5\u00f8\u0102\u0111\u0114\u011c"+
		"\u0129\u012b\u0132\u0136\u013e\u0142\u0146\u014e\u0154\u015c\u0164\u016c"+
		"\u0174\u017c\u0184\u018c\u0194\u019c\u01a4\u01ac\u01b4\u01bc\u01c8\u01d2"+
		"\u01f0\u01f6";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}