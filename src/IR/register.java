package IR;

import java.util.LinkedList;

public class register extends entity{
    public String label = null;
    public int loopDepth = 0;
    public LinkedList<statement> uses;
    public statement def;
    public register (){
        super();
    }
    public register (int t){
        registerCount = t;
    }
    // for debug
    public int registerCount = 0;
    @Override
    public String toString(){
        return ""+registerCount;
    }
}
