import AST.RootNode;
import Backend.CodeGen.AsmOptimizer;
import Backend.CodeGen.AsmPrinter;
import Backend.CodeGen.InstrSelector;
import Backend.IRGen.IRBuilder;
import Backend.IRGen.IRPrinter;
import Backend.Mem2Reg.Mem2Reg;
import Backend.Optimizer.IROptimizer;
import Backend.RegisterAllocation.LivenessAnalysis;
import Backend.RegisterAllocation.RegAlloc;
import Backend.RegisterAllocation.RegAlloc_Basic;
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
import VM.VMachine;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.*;
import java.util.HashMap;


public class Main {
    public static void main(String[] args) throws Exception {
        InputStream input;
        PrintStream out_llvm = new PrintStream("test\\test.ll");
        PrintStream out_asm;
        if (args.length>0) {
            input = System.in;
            out_asm = new PrintStream("test.s");
        } else {
            // debug
            input = new FileInputStream("test\\test.mx");
            out_asm = new PrintStream("test\\test.s");
        }
        boolean semantic = true, codegen = true, optimize = true;
        for (String arg : args) {
            if (arg.equals("sema")) {
                semantic = true;
                codegen = false;
                optimize = false;
            } else if (arg.equals("codegen")) {
                codegen = true;
            }
            else if (arg.equals("opt")) optimize = true;
        }
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
            HashMap<String, classDef> idToDef = new HashMap<>();
            HashMap<String, funcDef> idToFuncDef = new HashMap<>();
            gScope.setIdToDef(idToDef);
            gScope.setIdToFuncDef(idToFuncDef);
            new SymbolCollector(gScope).visit(ASTRoot);
            if (semantic) {
                SemanticChecker semanticChecker = new SemanticChecker(gScope);
                semanticChecker.visit(ASTRoot);
            }
            if (!codegen) return;
            program pg = new program();
            new IRBuilder(pg, gScope, idToDef, idToFuncDef).visit(ASTRoot);
            //new IRPrinter(System.out).visitProgram(pg);
            new Mem2Reg(pg).run();
            //if (optimize) new IROptimizer(pg).run();
            new IRPrinter(out_llvm).visitProgram(pg);
            AsmPg vmPg = new AsmPg();
            new VMachine(pg,32,new AsmPrinter(vmPg,out_asm)).run();
            AsmPg asmPg = new AsmPg();
            new InstrSelector(asmPg).visitProgram(pg);
            new LivenessAnalysis(asmPg).work();
            new RegAlloc(asmPg).work();
            //new RegAlloc_Basic(asmPg).work();
            new AsmOptimizer(asmPg).work();
            //new AsmPrinter(asmPg, out_asm).print();
        } catch (error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}