package IR;

public class constant extends entity{
    public enum Genre {
        STRING,INT,VOID
    }
    public Genre genre;
    private int intValue;
    private String stringValue;

    public constant(){
        super();
        this.genre = Genre.VOID;
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
}