// Generated from D:/workspace/libro_workspace/OS/Compiler/src\MxL.g4 by ANTLR 4.9.1
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxLLexer extends Lexer {
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
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"Mod", "Minus", "Plus", "Star", "Div", "Greater", "Less", "Equal", "NotEqual", 
			"LessEqual", "GreaterEqual", "Not", "AndAnd", "OrOr", "And", "Or", "Tilde", 
			"Caret", "RightShift", "LeftShift", "Assign", "PlusPlus", "MinusMinus", 
			"Dot", "LeftBracket", "RightBracket", "LeftParen", "RightParen", "Semi", 
			"Comma", "LeftBrace", "RightBrace", "Whitespace", "Newline", "BlockComment", 
			"LineComment", "Int", "Bool", "String", "Null", "Void", "True", "False", 
			"If", "Else", "For", "While", "Break", "Continue", "Return", "New", "Class", 
			"This", "Arrow", "PointerLiteral", "IntegerLiteral", "StringLiteral", 
			"DIGIT", "NONZERODIGIT", "NONDIGIT", "Schar", "EscapeSequence", "Identifier", 
			"Identifiernondigit", "UniChar"
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


	public MxLLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "MxL.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2<\u0194\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t="+
		"\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\3\2\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\6\3\6"+
		"\3\7\3\7\3\b\3\b\3\t\3\t\3\t\3\n\3\n\3\n\3\13\3\13\3\13\3\f\3\f\3\f\3"+
		"\r\3\r\3\r\3\r\5\r\u00a4\n\r\3\16\3\16\3\16\3\16\3\16\5\16\u00ab\n\16"+
		"\3\17\3\17\3\17\3\17\5\17\u00b1\n\17\3\20\3\20\3\21\3\21\3\22\3\22\3\23"+
		"\3\23\3\24\3\24\3\24\3\25\3\25\3\25\3\26\3\26\3\27\3\27\3\27\3\30\3\30"+
		"\3\30\3\31\3\31\3\32\3\32\3\33\3\33\3\34\3\34\3\35\3\35\3\36\3\36\3\37"+
		"\3\37\3 \3 \3!\3!\3\"\6\"\u00dc\n\"\r\"\16\"\u00dd\3\"\3\"\3#\3#\5#\u00e4"+
		"\n#\3#\5#\u00e7\n#\3#\3#\3$\3$\3$\3$\7$\u00ef\n$\f$\16$\u00f2\13$\3$\3"+
		"$\3$\3$\3$\3%\3%\3%\3%\7%\u00fd\n%\f%\16%\u0100\13%\3%\3%\3&\3&\3&\3&"+
		"\3\'\3\'\3\'\3\'\3\'\3(\3(\3(\3(\3(\3(\3(\3)\3)\3)\3)\3)\3*\3*\3*\3*\3"+
		"*\3+\3+\3+\3+\3+\3,\3,\3,\3,\3,\3,\3-\3-\3-\3.\3.\3.\3.\3.\3/\3/\3/\3"+
		"/\3\60\3\60\3\60\3\60\3\60\3\60\3\61\3\61\3\61\3\61\3\61\3\61\3\62\3\62"+
		"\3\62\3\62\3\62\3\62\3\62\3\62\3\62\3\63\3\63\3\63\3\63\3\63\3\63\3\63"+
		"\3\64\3\64\3\64\3\64\3\65\3\65\3\65\3\65\3\65\3\65\3\66\3\66\3\66\3\66"+
		"\3\66\3\67\3\67\3\67\38\38\39\39\79\u0167\n9\f9\169\u016a\139\39\59\u016d"+
		"\n9\3:\3:\7:\u0171\n:\f:\16:\u0174\13:\3:\3:\3;\3;\3<\3<\3=\3=\3>\3>\5"+
		">\u0180\n>\3?\3?\3?\3?\3?\3?\5?\u0188\n?\3@\3@\7@\u018c\n@\f@\16@\u018f"+
		"\13@\3A\3A\3B\3B\3\u00f0\2C\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25"+
		"\f\27\r\31\16\33\17\35\20\37\21!\22#\23%\24\'\25)\26+\27-\30/\31\61\32"+
		"\63\33\65\34\67\359\36;\37= ?!A\"C#E$G%I&K\'M(O)Q*S+U,W-Y.[/]\60_\61a"+
		"\62c\63e\64g\65i\66k\67m8o9q:s;u\2w\2y\2{\2}\2\177<\u0081\2\u0083\2\3"+
		"\2\n\4\2\13\13\"\"\4\2\f\f\17\17\3\2\62;\3\2\63;\5\2C\\aac|\6\2\f\f\17"+
		"\17$$^^\4\2C\\c|\6\2\62;C\\aac|\2\u019b\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3"+
		"\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2"+
		"\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31\3\2\2\2\2\33\3\2\2\2\2\35"+
		"\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)"+
		"\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2\2\2\61\3\2\2\2\2\63\3\2\2\2\2"+
		"\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3\2\2\2\2=\3\2\2\2\2?\3\2\2\2\2"+
		"A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2I\3\2\2\2\2K\3\2\2\2\2M\3"+
		"\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3\2\2\2\2W\3\2\2\2\2Y\3\2\2"+
		"\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2\2\2c\3\2\2\2\2e\3\2\2\2\2"+
		"g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2m\3\2\2\2\2o\3\2\2\2\2q\3\2\2\2\2s\3"+
		"\2\2\2\2\177\3\2\2\2\3\u0085\3\2\2\2\5\u0087\3\2\2\2\7\u0089\3\2\2\2\t"+
		"\u008b\3\2\2\2\13\u008d\3\2\2\2\r\u008f\3\2\2\2\17\u0091\3\2\2\2\21\u0093"+
		"\3\2\2\2\23\u0096\3\2\2\2\25\u0099\3\2\2\2\27\u009c\3\2\2\2\31\u00a3\3"+
		"\2\2\2\33\u00aa\3\2\2\2\35\u00b0\3\2\2\2\37\u00b2\3\2\2\2!\u00b4\3\2\2"+
		"\2#\u00b6\3\2\2\2%\u00b8\3\2\2\2\'\u00ba\3\2\2\2)\u00bd\3\2\2\2+\u00c0"+
		"\3\2\2\2-\u00c2\3\2\2\2/\u00c5\3\2\2\2\61\u00c8\3\2\2\2\63\u00ca\3\2\2"+
		"\2\65\u00cc\3\2\2\2\67\u00ce\3\2\2\29\u00d0\3\2\2\2;\u00d2\3\2\2\2=\u00d4"+
		"\3\2\2\2?\u00d6\3\2\2\2A\u00d8\3\2\2\2C\u00db\3\2\2\2E\u00e6\3\2\2\2G"+
		"\u00ea\3\2\2\2I\u00f8\3\2\2\2K\u0103\3\2\2\2M\u0107\3\2\2\2O\u010c\3\2"+
		"\2\2Q\u0113\3\2\2\2S\u0118\3\2\2\2U\u011d\3\2\2\2W\u0122\3\2\2\2Y\u0128"+
		"\3\2\2\2[\u012b\3\2\2\2]\u0130\3\2\2\2_\u0134\3\2\2\2a\u013a\3\2\2\2c"+
		"\u0140\3\2\2\2e\u0149\3\2\2\2g\u0150\3\2\2\2i\u0154\3\2\2\2k\u015a\3\2"+
		"\2\2m\u015f\3\2\2\2o\u0162\3\2\2\2q\u016c\3\2\2\2s\u016e\3\2\2\2u\u0177"+
		"\3\2\2\2w\u0179\3\2\2\2y\u017b\3\2\2\2{\u017f\3\2\2\2}\u0187\3\2\2\2\177"+
		"\u0189\3\2\2\2\u0081\u0190\3\2\2\2\u0083\u0192\3\2\2\2\u0085\u0086\7\'"+
		"\2\2\u0086\4\3\2\2\2\u0087\u0088\7/\2\2\u0088\6\3\2\2\2\u0089\u008a\7"+
		"-\2\2\u008a\b\3\2\2\2\u008b\u008c\7,\2\2\u008c\n\3\2\2\2\u008d\u008e\7"+
		"\61\2\2\u008e\f\3\2\2\2\u008f\u0090\7@\2\2\u0090\16\3\2\2\2\u0091\u0092"+
		"\7>\2\2\u0092\20\3\2\2\2\u0093\u0094\7?\2\2\u0094\u0095\7?\2\2\u0095\22"+
		"\3\2\2\2\u0096\u0097\7#\2\2\u0097\u0098\7?\2\2\u0098\24\3\2\2\2\u0099"+
		"\u009a\7>\2\2\u009a\u009b\7?\2\2\u009b\26\3\2\2\2\u009c\u009d\7@\2\2\u009d"+
		"\u009e\7?\2\2\u009e\30\3\2\2\2\u009f\u00a4\7#\2\2\u00a0\u00a1\7p\2\2\u00a1"+
		"\u00a2\7q\2\2\u00a2\u00a4\7v\2\2\u00a3\u009f\3\2\2\2\u00a3\u00a0\3\2\2"+
		"\2\u00a4\32\3\2\2\2\u00a5\u00a6\7(\2\2\u00a6\u00ab\7(\2\2\u00a7\u00a8"+
		"\7c\2\2\u00a8\u00a9\7p\2\2\u00a9\u00ab\7f\2\2\u00aa\u00a5\3\2\2\2\u00aa"+
		"\u00a7\3\2\2\2\u00ab\34\3\2\2\2\u00ac\u00ad\7~\2\2\u00ad\u00b1\7~\2\2"+
		"\u00ae\u00af\7q\2\2\u00af\u00b1\7t\2\2\u00b0\u00ac\3\2\2\2\u00b0\u00ae"+
		"\3\2\2\2\u00b1\36\3\2\2\2\u00b2\u00b3\7(\2\2\u00b3 \3\2\2\2\u00b4\u00b5"+
		"\7~\2\2\u00b5\"\3\2\2\2\u00b6\u00b7\7\u0080\2\2\u00b7$\3\2\2\2\u00b8\u00b9"+
		"\7`\2\2\u00b9&\3\2\2\2\u00ba\u00bb\7@\2\2\u00bb\u00bc\7@\2\2\u00bc(\3"+
		"\2\2\2\u00bd\u00be\7>\2\2\u00be\u00bf\7>\2\2\u00bf*\3\2\2\2\u00c0\u00c1"+
		"\7?\2\2\u00c1,\3\2\2\2\u00c2\u00c3\7-\2\2\u00c3\u00c4\7-\2\2\u00c4.\3"+
		"\2\2\2\u00c5\u00c6\7/\2\2\u00c6\u00c7\7/\2\2\u00c7\60\3\2\2\2\u00c8\u00c9"+
		"\7\60\2\2\u00c9\62\3\2\2\2\u00ca\u00cb\7]\2\2\u00cb\64\3\2\2\2\u00cc\u00cd"+
		"\7_\2\2\u00cd\66\3\2\2\2\u00ce\u00cf\7*\2\2\u00cf8\3\2\2\2\u00d0\u00d1"+
		"\7+\2\2\u00d1:\3\2\2\2\u00d2\u00d3\7=\2\2\u00d3<\3\2\2\2\u00d4\u00d5\7"+
		".\2\2\u00d5>\3\2\2\2\u00d6\u00d7\7}\2\2\u00d7@\3\2\2\2\u00d8\u00d9\7\177"+
		"\2\2\u00d9B\3\2\2\2\u00da\u00dc\t\2\2\2\u00db\u00da\3\2\2\2\u00dc\u00dd"+
		"\3\2\2\2\u00dd\u00db\3\2\2\2\u00dd\u00de\3\2\2\2\u00de\u00df\3\2\2\2\u00df"+
		"\u00e0\b\"\2\2\u00e0D\3\2\2\2\u00e1\u00e3\7\17\2\2\u00e2\u00e4\7\f\2\2"+
		"\u00e3\u00e2\3\2\2\2\u00e3\u00e4\3\2\2\2\u00e4\u00e7\3\2\2\2\u00e5\u00e7"+
		"\7\f\2\2\u00e6\u00e1\3\2\2\2\u00e6\u00e5\3\2\2\2\u00e7\u00e8\3\2\2\2\u00e8"+
		"\u00e9\b#\2\2\u00e9F\3\2\2\2\u00ea\u00eb\7\61\2\2\u00eb\u00ec\7,\2\2\u00ec"+
		"\u00f0\3\2\2\2\u00ed\u00ef\13\2\2\2\u00ee\u00ed\3\2\2\2\u00ef\u00f2\3"+
		"\2\2\2\u00f0\u00f1\3\2\2\2\u00f0\u00ee\3\2\2\2\u00f1\u00f3\3\2\2\2\u00f2"+
		"\u00f0\3\2\2\2\u00f3\u00f4\7,\2\2\u00f4\u00f5\7\61\2\2\u00f5\u00f6\3\2"+
		"\2\2\u00f6\u00f7\b$\2\2\u00f7H\3\2\2\2\u00f8\u00f9\7\61\2\2\u00f9\u00fa"+
		"\7\61\2\2\u00fa\u00fe\3\2\2\2\u00fb\u00fd\n\3\2\2\u00fc\u00fb\3\2\2\2"+
		"\u00fd\u0100\3\2\2\2\u00fe\u00fc\3\2\2\2\u00fe\u00ff\3\2\2\2\u00ff\u0101"+
		"\3\2\2\2\u0100\u00fe\3\2\2\2\u0101\u0102\b%\2\2\u0102J\3\2\2\2\u0103\u0104"+
		"\7k\2\2\u0104\u0105\7p\2\2\u0105\u0106\7v\2\2\u0106L\3\2\2\2\u0107\u0108"+
		"\7d\2\2\u0108\u0109\7q\2\2\u0109\u010a\7q\2\2\u010a\u010b\7n\2\2\u010b"+
		"N\3\2\2\2\u010c\u010d\7u\2\2\u010d\u010e\7v\2\2\u010e\u010f\7t\2\2\u010f"+
		"\u0110\7k\2\2\u0110\u0111\7p\2\2\u0111\u0112\7i\2\2\u0112P\3\2\2\2\u0113"+
		"\u0114\7p\2\2\u0114\u0115\7w\2\2\u0115\u0116\7n\2\2\u0116\u0117\7n\2\2"+
		"\u0117R\3\2\2\2\u0118\u0119\7x\2\2\u0119\u011a\7q\2\2\u011a\u011b\7k\2"+
		"\2\u011b\u011c\7f\2\2\u011cT\3\2\2\2\u011d\u011e\7v\2\2\u011e\u011f\7"+
		"t\2\2\u011f\u0120\7w\2\2\u0120\u0121\7g\2\2\u0121V\3\2\2\2\u0122\u0123"+
		"\7h\2\2\u0123\u0124\7c\2\2\u0124\u0125\7n\2\2\u0125\u0126\7u\2\2\u0126"+
		"\u0127\7g\2\2\u0127X\3\2\2\2\u0128\u0129\7k\2\2\u0129\u012a\7h\2\2\u012a"+
		"Z\3\2\2\2\u012b\u012c\7g\2\2\u012c\u012d\7n\2\2\u012d\u012e\7u\2\2\u012e"+
		"\u012f\7g\2\2\u012f\\\3\2\2\2\u0130\u0131\7h\2\2\u0131\u0132\7q\2\2\u0132"+
		"\u0133\7t\2\2\u0133^\3\2\2\2\u0134\u0135\7y\2\2\u0135\u0136\7j\2\2\u0136"+
		"\u0137\7k\2\2\u0137\u0138\7n\2\2\u0138\u0139\7g\2\2\u0139`\3\2\2\2\u013a"+
		"\u013b\7d\2\2\u013b\u013c\7t\2\2\u013c\u013d\7g\2\2\u013d\u013e\7c\2\2"+
		"\u013e\u013f\7m\2\2\u013fb\3\2\2\2\u0140\u0141\7e\2\2\u0141\u0142\7q\2"+
		"\2\u0142\u0143\7p\2\2\u0143\u0144\7v\2\2\u0144\u0145\7k\2\2\u0145\u0146"+
		"\7p\2\2\u0146\u0147\7w\2\2\u0147\u0148\7g\2\2\u0148d\3\2\2\2\u0149\u014a"+
		"\7t\2\2\u014a\u014b\7g\2\2\u014b\u014c\7v\2\2\u014c\u014d\7w\2\2\u014d"+
		"\u014e\7t\2\2\u014e\u014f\7p\2\2\u014ff\3\2\2\2\u0150\u0151\7p\2\2\u0151"+
		"\u0152\7g\2\2\u0152\u0153\7y\2\2\u0153h\3\2\2\2\u0154\u0155\7e\2\2\u0155"+
		"\u0156\7n\2\2\u0156\u0157\7c\2\2\u0157\u0158\7u\2\2\u0158\u0159\7u\2\2"+
		"\u0159j\3\2\2\2\u015a\u015b\7v\2\2\u015b\u015c\7j\2\2\u015c\u015d\7k\2"+
		"\2\u015d\u015e\7u\2\2\u015el\3\2\2\2\u015f\u0160\7/\2\2\u0160\u0161\7"+
		"@\2\2\u0161n\3\2\2\2\u0162\u0163\5Q)\2\u0163p\3\2\2\2\u0164\u0168\5w<"+
		"\2\u0165\u0167\5u;\2\u0166\u0165\3\2\2\2\u0167\u016a\3\2\2\2\u0168\u0166"+
		"\3\2\2\2\u0168\u0169\3\2\2\2\u0169\u016d\3\2\2\2\u016a\u0168\3\2\2\2\u016b"+
		"\u016d\7\62\2\2\u016c\u0164\3\2\2\2\u016c\u016b\3\2\2\2\u016dr\3\2\2\2"+
		"\u016e\u0172\7$\2\2\u016f\u0171\5{>\2\u0170\u016f\3\2\2\2\u0171\u0174"+
		"\3\2\2\2\u0172\u0170\3\2\2\2\u0172\u0173\3\2\2\2\u0173\u0175\3\2\2\2\u0174"+
		"\u0172\3\2\2\2\u0175\u0176\7$\2\2\u0176t\3\2\2\2\u0177\u0178\t\4\2\2\u0178"+
		"v\3\2\2\2\u0179\u017a\t\5\2\2\u017ax\3\2\2\2\u017b\u017c\t\6\2\2\u017c"+
		"z\3\2\2\2\u017d\u0180\n\7\2\2\u017e\u0180\5}?\2\u017f\u017d\3\2\2\2\u017f"+
		"\u017e\3\2\2\2\u0180|\3\2\2\2\u0181\u0182\7^\2\2\u0182\u0188\7^\2\2\u0183"+
		"\u0184\7^\2\2\u0184\u0188\7p\2\2\u0185\u0186\7^\2\2\u0186\u0188\7$\2\2"+
		"\u0187\u0181\3\2\2\2\u0187\u0183\3\2\2\2\u0187\u0185\3\2\2\2\u0188~\3"+
		"\2\2\2\u0189\u018d\5\u0081A\2\u018a\u018c\5\u0083B\2\u018b\u018a\3\2\2"+
		"\2\u018c\u018f\3\2\2\2\u018d\u018b\3\2\2\2\u018d\u018e\3\2\2\2\u018e\u0080"+
		"\3\2\2\2\u018f\u018d\3\2\2\2\u0190\u0191\t\b\2\2\u0191\u0082\3\2\2\2\u0192"+
		"\u0193\t\t\2\2\u0193\u0084\3\2\2\2\21\2\u00a3\u00aa\u00b0\u00dd\u00e3"+
		"\u00e6\u00f0\u00fe\u0168\u016c\u0172\u017f\u0187\u018d\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}