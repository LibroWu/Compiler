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
    }

    /* --------------------- */
    /* | Loop Optimization | */
    /* --------------------- */
    public void RunLoop() {
    }

    public void run() {
        new IRPrinter(System.out).visitProgram(pg);
        //pg.funcDefs.forEach(this::RunCP);
        //pg.funcDefs.forEach(this::RunADCE);
        //pg.funcDefs.forEach(this::emptyIRBlockRemove);
    }
}
