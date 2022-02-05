package IR;

public class globalStringConstant extends globalUnit{
    public String content,rawString;
    public int counter;
    public register rd;
    public IRType irType;

    public globalStringConstant(String content,String rawString,int counter,register rd,IRType irType){
        this.content = content;
        this.rawString = rawString;
        this.counter = counter;
        this.rd      = rd;
        this.irType  = irType;
    }
}
