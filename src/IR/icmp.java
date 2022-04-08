package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class icmp extends statement{
    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(rs1)) rs1 = ValReplace.get(rs1);
        if (ValReplace.containsKey(rs2)) rs2 = ValReplace.get(rs2);
    }

    @Override
    public void init() {
        rd.uses = new LinkedList<>();
        rd.def = this;
    }

    @Override
    public void analyseUseDef() {
        if (rs1 instanceof register) {
            register rs = (register) rs1;
            rs.uses.add(this);
        }
        if (rs2 instanceof register) {
            register rs = (register) rs2;
            rs.uses.add(this);
        }
    }

    @Override
    public boolean isResConst() {
        return !(rs1 instanceof register) && !(rs2 instanceof register);
    }

    @Override
    public void removeStmt(LinkedList<statement> W) {
        // in Mx, resources must be constant
        constant con,con1=(constant) rs1,con2 =(constant) rs2;
        switch (cmpOp) {
            case SLT : con = new constant(con1.getIntValue()<con2.getIntValue());break;
            case SLE : con = new constant(!(con1.getIntValue()>con2.getIntValue()));break;
            case SGT : con = new constant(con1.getIntValue()>con2.getIntValue());break;
            case SGE : con = new constant(!(con1.getIntValue()<con2.getIntValue()));break;
            case EQ  : con = new constant(con1.getIntValue()==con2.getIntValue());break;
            case NEQ : con = new constant(con1.getIntValue()!=con2.getIntValue());break;
            default  : con = null;
        }
        for (statement use : rd.uses) {
            statement stmt = use.replaceRegWithEntity(rd,con);
            if (!stmt.inWorklist) {
                stmt.inWorklist = true;
                W.push(stmt);
            }
        }
        parentBlock.delete_Statement(this);
    }

    @Override
    public statement replaceRegWithEntity(register rs, entity en) {
        if (rs1==rs) rs1 = en;
        if (rs2==rs) rs2 = en;
        return this;
    }

    @Override
    public void activatePropagate(LinkedList<statement> W) {
        if (rs1 instanceof register) {
            register rs = (register) rs1;
            if (rs.def!=null && !rs.def.inWorklist) {
                rs.def.inWorklist = true;
                rs.def.isActivate = true;
                W.add(rs.def);
            }
        }
        if (rs2 instanceof register) {
            register rs = (register) rs2;
            if (rs.def!=null && !rs.def.inWorklist) {
                rs.def.inWorklist = true;
                rs.def.isActivate = true;
                W.add(rs.def);
            }
        }
    }

    public enum cmpOpType {
        SLT,SLE,SGT,SGE,EQ,NEQ
    }
    public entity rs1,rs2;
    public register rd;
    public cmpOpType cmpOp;
    public IRType rsType;

    public icmp(register rd,entity rs1,entity rs2,cmpOpType cmpOp,IRType rsType) {
        this.rd = rd;
        this.rs1 = rs1;
        this.rs2 = rs2;
        this.cmpOp = cmpOp;
        this.rsType = rsType;
    }
}