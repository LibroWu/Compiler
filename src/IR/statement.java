package IR;

import java.util.HashMap;
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

    // for IR optimizer
    abstract public void init();

    abstract public void analyseUseDef();

    abstract public boolean isResConst();

    abstract public void removeStmt(LinkedList<statement> W);

    abstract public statement replaceRegWithEntity(register rs, entity en);

    abstract public void activatePropagate(LinkedList<statement> W);

    abstract public statement clone(HashMap<register,entity> ValReplace);
}
