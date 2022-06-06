package Backend.Optimizer;

import Backend.IRGen.IRPrinter;
import IR.*;

public class IROptimizer {
    public program pg;
    private final ADCEPass adcePass = new ADCEPass();
    private final ConstPropagationPass constPropagationPass = new ConstPropagationPass();

    public IROptimizer(program pg) {
        this.pg = pg;
    }

    /* ------------------------- */
    /* | Dead Code Elimination | */
    /* ------------------------- */

    public void RunDCE() {
    }

    /* ------------------------------------ */
    /* | Aggressive Dead Code Elimination | */
    /* ------------------------------------ */

    public void RunADCE(funcDef f){
        adcePass.RunADCE(f);
    }

    /* ------------------------ */
    /* | Constant Propagation | */
    /* ------------------------ */
    public void RunCP(funcDef f) {
        constPropagationPass.RunCP(f);
    }
    /* ------------------------------------ */
    /* | Common Subexpression Elimination | */
    /* ------------------------------------ */
    public void RunCSE() {
    }

    /* -------------------- */
    /* | Inline Expansion | */
    /* -------------------- */
    public void RunIE() {
        new InlineExpansionPass(pg).RunIE();
    }
    public void RunIE(int expansionThreshold,int expansionLimit,int totalExpansionThreshold) {
        new InlineExpansionPass(pg,expansionThreshold,expansionLimit,totalExpansionThreshold).RunIE();
    }

    /* --------------------- */
    /* | Loop Optimization | */
    /* --------------------- */
    public void RunLoop() {
        new LoopOptPass(pg).Run();
    }

    /* --------------- */
    /* | Block Merge | */
    /* --------------- */
    public void RunBlockMerge() {
        new BasicBlockMergingPass(pg).RunBM();
    }
    /* ------------------------ */
    /* | Expression Eliminate | */
    /* ------------------------ */
    public void RunExpressionEliminate() {
        new ExpressionEliminatePass(pg).Run();
    }
    public void run() {
        //new IRPrinter(System.out).visitProgram(pg);
        pg.funcDefs.forEach(this::RunCP);
        //System.out.println("after first CP round");
        //new IRPrinter(System.out).visitProgram(pg);
        pg.funcDefs.forEach(this::RunADCE);
        //System.out.println("after first ADCE round");
        ///new IRPrinter(System.out).visitProgram(pg);
        RunIE(1000,4,10000);
        System.out.println("after IE");
        RunBlockMerge();
        System.out.println("blcok merge");
        RunExpressionEliminate();
        System.out.println("after EE");
        RunIE(500,2,3000);
        RunBlockMerge();
        RunExpressionEliminate();
        System.out.println("after IE again");
        new IRPrinter(System.out).visitProgram(pg);
        RunLoop();
        //pg.funcDefs.forEach(this::RunCP);
        //System.out.println("after RunCP");
        //new IRPrinter(System.out).visitProgram(pg);
        //new IRPrinter(System.out).visitProgram(pg);
        //pg.funcDefs.forEach(this::RunADCE);
    }
}
