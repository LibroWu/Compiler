package IR;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public abstract class statement {
    public statement prev = null, next = null;
    public boolean removed = false, inWorklist = false, isActivate = false;
    public String Comments = null;
    public block parentBlock = null;

    public statement() {
    }

    // for mem2reg
    abstract public void replace(HashMap<entity, entity> ValReplace);

    // for liveness analysis
    public HashSet<register> def,use,liveIn,liveOut;
    abstract public void fillSet();
    abstract public void calcInst();
    abstract public boolean check();
    public void initialize(){
        def = new HashSet<>();
        use = new HashSet<>();
        liveIn = new HashSet<>();
        liveOut = new HashSet<>();
    }

    // for IR optimizer
    abstract public register getReg();

    abstract public void init();

    abstract public void analyseUseDef();

    abstract public boolean isResConst();

    abstract public void removeStmt(LinkedList<statement> W);

    abstract public statement replaceRegWithEntity(register rs, entity en);

    abstract public void activatePropagate(LinkedList<statement> W);

    abstract public statement clone(HashMap<register,entity> ValReplace);

    abstract public boolean isLoopInvariant(HashSet<block> loop,HashSet<register> live);

    abstract public void loopInvariantDelivery(LinkedList<statement> W,LinkedList<statement> promotableStatements,HashSet<block> loop,HashSet<register> live);

}
