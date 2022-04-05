package IR;

import java.util.Objects;

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

    public boolean constEquals(constant other){
        if (genre!=other.genre) return false;
        if (this.genre == Genre.BOOL) return boolValue==other.boolValue;
        if (this.genre == Genre.INT) return intValue==other.intValue;
        if (this.genre == Genre.STRING) return Objects.equals(stringValue,other.stringValue);
        return true;
    }

    public int getIntValue() { return intValue;}
    public String getStringValue() { return stringValue;}
    public boolean getBoolValue() {return boolValue;}
    public void setBoolValue(boolean flag) { boolValue = flag;}

    @Override
    public String toString(){
        if (this.genre == Genre.BOOL) return "const "+boolValue;
        if (this.genre == Genre.INT) return "const "+intValue;
        if (this.genre == Genre.STRING) return "const "+stringValue;
        return "const void";
    }
}
