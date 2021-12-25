package IR;

public class br extends terminalStmt{
    //null if jump directly
    public register val;
    public block trueBranch,falseBranch;
    public br(register val,block trueBranch,block falseBranch){
        this.val = val;
        this.trueBranch = trueBranch;
        this.falseBranch = falseBranch;
    }
}
