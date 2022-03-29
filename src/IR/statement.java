package IR;

import java.util.HashMap;

public abstract class statement {
    public boolean removed = false;
    public String Comments = null;
    public statement(){}

    abstract public void replace(HashMap<entity,entity> ValReplace);
}
