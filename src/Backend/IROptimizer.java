package Backend;

import IR.*;

public class IROptimizer {
    public program pg;

    public IROptimizer(program pg){
        this.pg = pg;
    }

    /* ------------------------- */
    /* | Dead Code Elimination | */
    /* ------------------------- */

    public void RunDCE(){}

    /* ------------------------------------ */
    /* | Aggressive Dead Code Elimination | */
    /* ------------------------------------ */
    public void RunADCE(){}

    /* ------------------------ */
    /* | Constant Propagation | */
    /* ------------------------ */
    public void RunCP(){}

    /* ------------------------------------ */
    /* | Common Subexpression Elimination | */
    /* ------------------------------------ */
    public void  RunCSE(){}
    /* -------------------- */
    /* | Inline Expansion | */
    /* -------------------- */
    public void RunIE(){}
    /* --------------------- */
    /* | Loop Optimization | */
    /* --------------------- */
    public void RunLoop(){}
    public void run(){

    }
}
