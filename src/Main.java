import AST.RootNode;
import Backend.*;
import IR.*;
import Backend.IRBuilder;
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

import java.io.*;
import java.util.HashMap;


public class Main {
    public static void main(String[] args) throws Exception {
        String name = "test.mx";
        String nameOutput = "test.ll";
        //String name = "D:\\workspace\\libro_workspace\\archive\\Compiler-2021-testcases\\sema\\basic-package\\basic-5.mx";
        InputStream input = new FileInputStream(name);
        PrintStream out = new PrintStream(nameOutput);
        //OutputStream out = System.out;
        //InputStream input = System.in;
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
            HashMap<String,classDef> idToDef = new HashMap<>();
            gScope.setIdToDef(idToDef);
            new SymbolCollector(gScope).visit(ASTRoot);
            new SemanticChecker(gScope).visit(ASTRoot);
            program pg = new program();
            new IRBuilder(pg, gScope,idToDef).visit(ASTRoot);
            new IRPrinter(out).visitProgram(pg);
        } catch (error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}