package IR;

import java.util.Objects;

public class constant extends entity {
    public enum Genre {
        STRING, INT, VOID, BOOL
    }

    public Genre genre;
    private int intValue;
    private String stringValue;

    public constant() {
        super();
        this.genre = Genre.VOID;
    }

    public constant(boolean flag) {
        super();
        this.genre = Genre.BOOL;
        this.intValue = flag ? 1 : 0;
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

    public boolean entityEquals(entity en) {
        if (en instanceof register) return false;
        constant other = (constant) en;
        if (genre != other.genre) return false;
        if (this.genre == Genre.BOOL) return intValue == other.intValue;
        if (this.genre == Genre.INT) return intValue == other.intValue;
        if (this.genre == Genre.STRING) return Objects.equals(stringValue, other.stringValue);
        return true;
    }

    @Override
    public entity clone() {
        if (genre == Genre.INT) return new constant(intValue);
        if (genre == Genre.BOOL) return new constant(intValue>0);
        if (genre == Genre.STRING) return new constant(stringValue);
        return new constant();
    }

    public int getIntValue() {
        return intValue;
    }

    public String getStringValue() {
        return stringValue;
    }

    public boolean getBoolValue() {
        return intValue > 0;
    }

    public void setBoolValue(boolean flag) {
        intValue = flag?1:0;
    }

    @Override
    public String toString() {
        if (this.genre == Genre.BOOL) return "const " + (intValue>0);
        if (this.genre == Genre.INT) return "const " + intValue;
        if (this.genre == Genre.STRING) return "const " + stringValue;
        return "const void";
    }
}
