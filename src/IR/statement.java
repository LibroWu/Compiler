package IR;

import java.util.HashMap;

public abstract class statement {
    public statement prev = null, next = null;
    public boolean removed = false;
    public String Comments = null;
    public statement(){}

    abstract public void replace(HashMap<entity,entity> ValReplace);
}
