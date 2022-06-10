package IR;

import java.util.LinkedList;

public class register extends entity{
    public String label = null;
    public int loopDepth = 0;
    public LinkedList<statement> uses;
    public statement def;

    public boolean isLoopInvariant;

    public register (){
        super();
        registerCount = --curCount;
    }
    public register (int t){
        registerCount = t;
    }
    // for debug
    static public int curCount = 0;
    public int registerCount = 0;
    @Override
    public String toString(){
        return ""+registerCount;
    }

    @Override
    public boolean entityEquals(entity en) {
        if (en instanceof constant) return false;
        return this==en;
    }

    @Override
    public entity clone() {
        // will not call this function
        return new register();
    }
}
