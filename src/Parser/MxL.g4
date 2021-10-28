grammar MxL;

program: declaration* EOF;

/* declarations */

arraySpecifier:
    (
        buildInType
        | Identifier
    ) (LeftBracket RightBracket)+;

varType:
    buildInType
    | Identifier
    | classSpecifier
    | arraySpecifier;

buildInType:
    Bool
    | Int
    | String;

returnType:
    Void
    | buildInType
    | Identifier
    | arraySpecifier;

declaration:
    declarationStatement
    | functionDefinition;

functionDefinition: returnType Identifier LeftParen functionParameterDef? RightParen compoundStatement;

functionParameterDef : varType Identifier (Comma varType Identifier)*;

declarationStatement:(arraySpecifier | varType) initDeclaratorList? Semi;

initDeclaratorList:declarator (Comma declarator)*;

declarator: Identifier (Assign expression)?;

/* Statements */

statement:declarationStatement
		| expressionStatement
		| compoundStatement
		| selectionStatement
		| iterationStatement
		| jumpStatement
		| Semi;

statementSeq:statement+;

compoundStatement: LeftBrace statementSeq? RightBrace;

expressionStatement:expression? Semi;
selectionStatement:If LeftParen condition RightParen trueStatement=statement (Else falseStatement=statement)?;
iterationStatement:
    While LeftParen condition RightParen statement
    | For LeftParen forInitStatement condition? Semi forIncrStatement RightParen statement;
jumpStatement:
    (
        Return expression?
        | Break
        | Continue
    ) Semi;
condition: expression;

forInitStatement:
    expressionStatement
    | declarationStatement;

forIncrStatement: expression?;

/*Expressions*/
primaryExpression:
	literal
	| This
	| LeftParen expression RightParen
	| idExpression
	| lambdaExpression;

idExpression: Identifier;

lambdaExpression: lambdaIntroducer lambdaDeclarator Arrow  compoundStatement;

lambdaIntroducer: LeftBracket And RightBracket;

lambdaDeclarator:
    (LeftParen functionParameterDef? RightParen)?;

postfixExpression:
    primaryExpression
    | postfixExpression LeftParen expression? RightParen
    | postfixExpression LeftBracket expression RightBracket
    | postfixExpression Dot idExpression
    | postfixExpression (PlusPlus | MinusMinus);

unaryExpression:
    postfixExpression
    | (PlusPlus | MinusMinus | unaryOperator) unaryExpression
    | newExpression;

unaryOperator: Or | Star | And | Plus | Tilde | Minus | Not;

newExpression:
    New
    (
        buildInType
        | Identifier
        | newArrayType
    ) (LeftParen RightParen)?;

newArrayType:
    (
    buildInType
    | Identifier
    ) (LeftBracket expression RightBracket)+ (LeftBracket RightBracket)*;

multiplicativeExpression:
    unaryExpression (
        theSDMOp unaryExpression
    )*;

additiveExpression:
    multiplicativeExpression (
        thePMOp multiplicativeExpression
    )*;

shiftExpression:
    additiveExpression (
        theShiftOp additiveExpression
    )*;

relationalExpression:
    shiftExpression (
        theCmpOp shiftExpression
    )*;

equalityExpression:
    relationalExpression (
        theEqualOp relationalExpression
    )*;

andExpression: equalityExpression ( And equalityExpression)*;

exclusiveOrExpression: andExpression (Caret andExpression)*;

inclusiveOrExpression: exclusiveOrExpression ( Or exclusiveOrExpression)*;

logicalAndExpression:
    inclusiveOrExpression (AndAnd inclusiveOrExpression)*;

logicalOrExpression:
    logicalAndExpression (OrOr logicalAndExpression)*;

assignmentExpression:
    logicalOrExpression (Assign assignmentExpression)*;

expression: assignmentExpression (Comma assignmentExpression)*;


/* Classes */

classSpecifier:
    classHead LeftBrace memberDeclaration* RightBrace;

classHead:
    Class Identifier;

memberDeclaration:
    functionDefinition
    | declarationStatement
    | constructFunctionDefinition
    | Semi;

constructFunctionDefinition: Identifier LeftParen RightParen compoundStatement;

/* Lexer */
theEqualOp: 
    Equal 
    |NotEqual;

theCmpOp:
    Less | Greater | LessEqual | GreaterEqual;

theShiftOp:RightShift | LeftShift;

thePMOp:Plus | Minus;

theSDMOp:Star | Div | Mod;

theOperator:
    New (LeftBracket RightBracket)?
    | Plus
    | Minus
    | Star
    | Div
    | Mod
    | Caret
    | And
    | Or
    | Tilde
    | Not
    | Assign
    | Greater
    | Less
    | GreaterEqual
    | LessEqual
    | RightShift
    | LeftShift
    | Equal
    | NotEqual
    | AndAnd
    | OrOr
    | PlusPlus
    | MinusMinus
    | Comma
    | LeftParen RightParen
    | LeftBracket RightBracket;

literal:
    IntegerLiteral
    | StringLiteral
    | ( True | False)
    | Null;

/* Tokens */
Mod: '%';
Minus: '-';
Plus: '+' ;
Star: '*';
Div:'/';

Greater:'>';
Less:'<';
Equal: '==';
NotEqual: '!=';
LessEqual: '<=';
GreaterEqual: '>=';

Not: '!' | 'not';
AndAnd: '&&' | 'and';
OrOr: '||' | 'or';

And: '&';
Or: '|';
Tilde: '~';
Caret: '^';
RightShift: '>>';
LeftShift: '<<';

Assign: '=';

PlusPlus: '++';
MinusMinus: '--';

Dot: '.';

LeftBracket: '[';
RightBracket: ']';

LeftParen: '(';
RightParen: ')';

Semi: ';';
Comma: ',';
LeftBrace: '{';
RightBrace: '}';

Whitespace: [ \t]+ -> skip;
Newline: ('\r' '\n'? | '\n') -> skip;
BlockComment: '/*' .*? '*/' -> skip;
LineComment: '//' ~ [\r\n]* -> skip;

Int: 'int';
Bool: 'bool';
String: 'string';
Null: 'null';
Void: 'void';
True: 'true';
False: 'false';
If: 'if';
Else: 'else';
For: 'for';
While: 'while';
Break: 'break';
Continue: 'continue';
Return: 'return';
New: 'new';
Class: 'class';
This: 'this';

Arrow: '->';


PointerLiteral: Null;

IntegerLiteral:
     NONZERODIGIT (DIGIT)*
    |  '0';

StringLiteral: '"' Schar* '"';

fragment DIGIT: [0-9];
fragment NONZERODIGIT: [1-9];
fragment NONDIGIT: [a-zA-Z_];
fragment Schar:
    ~["\\\r\n]
    |EscapeSequence;

fragment EscapeSequence:
    '\\\\'
    | '\\n'
    | '\\"';

Identifier: Identifiernondigit UniChar*;

fragment Identifiernondigit: [a-zA-Z];

fragment UniChar: [0-9a-zA-Z_];