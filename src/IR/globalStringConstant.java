package IR;

public class globalStringConstant extends globalUnit{
    public String content;
    public int counter;
    public register rd;
    public IRType irType;

    public globalStringConstant(String content,int counter,int length,register rd,IRType irType){
        this.content = content;
        this.counter = counter;
        this.rd      = rd;
        this.irType  = irType;
    }
}
