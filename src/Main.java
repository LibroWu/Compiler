import AST.RootNode;
import Backend.*;
import Backend.Mem2Reg.Mem2Reg;
import IR.*;
import Assembly.*;
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


public class  Main {
    public static void main(String[] args) throws Exception {
        String name = "test\\test.mx";
        String llvmOutput = "test\\test.ll";
        //String asmOutput = "test\\test.s";
        String asmOutput = "output.s";
        //String name = "D:\\workspace\\libro_workspace\\archive\\Compiler-2021-testcases\\codegen\\e2.mx";
        //InputStream input = new FileInputStream(name);
        PrintStream out_llvm = new PrintStream(llvmOutput);
        PrintStream out_asm = new PrintStream(asmOutput);
        //OutputStream out = System.out;
        InputStream input = System.in;
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
            HashMap<String,funcDef> idToFuncDef = new HashMap<>();
            gScope.setIdToDef(idToDef);
            gScope.setIdToFuncDef(idToFuncDef);
            new SymbolCollector(gScope).visit(ASTRoot);
            SemanticChecker semanticChecker = new SemanticChecker(gScope);
            semanticChecker.visit(ASTRoot);
            if (semanticChecker.hasLambda) return;
            program pg = new program();
            new IRBuilder(pg, gScope,idToDef,idToFuncDef).visit(ASTRoot);
            new IRPrinter(System.out).visitProgram(pg);
            new Mem2Reg(pg).run();
            //new Optimizer_Base().visitProgram(pg);
            new IRPrinter(out_llvm).visitProgram(pg);
            AsmPg asmPg = new AsmPg();
            new InstrSelector(asmPg).visitProgram(pg);
            new LivenessAnalysis(asmPg).work();
            new RegAlloc(asmPg).work();
            //new RegAlloc_Basic(asmPg).work();
            new AsmOptimizer(asmPg).work();
            new AsmPrinter(asmPg,out_asm).print();
        } catch (error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}