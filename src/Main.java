import AST.RootNode;
//import Backend.*;
import Frontend.ASTBuilder;
import Frontend.SemanticChecker;
import Frontend.SymbolCollector;
import Parser.MxLLexer;
import Parser.MxLParser;
import Util.MxLErrorListener;
import Util.error.error;
import Util.globalScope;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.InputStream;


public class Main {
    public static void main(String[] args) throws Exception {
        String name = "test.mx";
        //String name = "D:\\workspace\\libro_workspace\\archive\\Compiler-2021-testcases\\sema\\misc-package\\misc-7.mx";
        InputStream input = new FileInputStream(name);

        try {
            RootNode ASTRoot;
            globalScope gScope = new globalScope(null);

            MxLLexer lexer = new MxLLexer(CharStreams.fromStream(input));
            lexer.removeErrorListeners();
            lexer.addErrorListener(new MxLErrorListener());
            MxLParser parser = new MxLParser(new CommonTokenStream(lexer));
            parser.removeErrorListeners();
            parser.addErrorListener(new MxLErrorListener());
            ParseTree parseTreeRoot = parser.program();
            ASTBuilder astBuilder = new ASTBuilder(gScope);
            ASTRoot = (RootNode) astBuilder.visit(parseTreeRoot);
            new SymbolCollector(gScope).visit(ASTRoot);
            new SemanticChecker(gScope).visit(ASTRoot);
        } catch (error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}