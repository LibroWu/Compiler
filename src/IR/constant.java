package IR;

public class constant extends entity{
    public enum Genre {
        STRING,INT,VOID,BOOL
    }
    public Genre genre;
    private int intValue;
    private boolean boolValue;
    private String stringValue;

    public constant(){
        super();
        this.genre = Genre.VOID;
    }

    public constant(boolean flag){
        super();
        this.genre = Genre.BOOL;
        this.boolValue = flag;
    }
    public constant(int value) {
        super();
        this.intValue = value;
        genre = Genre.INT;
    }

    public constant(String value) {
        super();
        this.stringValue = value;
        genre = Genre.STRING;
    }

    public int getIntValue() { return intValue;}
    public String getStringValue() { return stringValue;}
    public boolean getBoolValue() {return boolValue;}
    public void setBoolValue(boolean flag) { boolValue = flag;}
}
