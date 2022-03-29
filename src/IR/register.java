package IR;

public class register extends entity{
    public String label = null;
    public int loopDepth = 0;
    public register (){
        super();
    }

    // for debug
    public int registerCount = 0;
    @Override
    public String toString(){
        return ""+registerCount;
    }
}
