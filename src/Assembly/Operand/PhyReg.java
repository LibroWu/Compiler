package Assembly.Operand;

public class PhyReg extends Reg{
    public String name;
    public int PhyOrder = 0;
    public PhyReg(String name,int phyOrder) {
        this.name = name;
        this.PhyOrder = phyOrder;
    }

    @Override
    public String toString() {
        return name;
    }

    @Override
    public int getNumber() {
        return PhyOrder;
    }
}
