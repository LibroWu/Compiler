package IR;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class icmp extends statement{

    @Override
    public boolean isLoopInvariant(HashSet<block> loop, HashSet<register> live) {
        return false;
    }

    @Override
    public void loopInvariantDelivery(LinkedList<statement> W, LinkedList<statement> promotableStatements, HashSet<block> loop, HashSet<register> live) {

    }

    // for liveness analysis
    @Override
    public void fillSet() {
        if (rs1 instanceof register) use.add((register) rs1);
        if (rs2 instanceof register) use.add((register) rs2);
        def.add(rd);
    }

    @Override
    public void calcInst() {
        liveOut = new HashSet<>();
        if (next!=null) {
            liveOut.addAll(next.liveIn);
        }
        liveIn = new HashSet<>(liveOut);
        liveIn.removeAll(def);
        liveIn.addAll(use);
    }

    @Override
    public boolean check() {
        return !liveOut.contains(rd);
    }

    @Override
    public register getReg() {
        return rd;
    }
    //

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
        return (rs1 instanceof constant && rs2 instanceof constant) || (rs1==rs2);
    }

    @Override
    public void removeStmt(LinkedList<statement> W) {
        constant con,con1,con2;
        if (rs1 instanceof constant && rs2 instanceof constant){
            con1=(constant) rs1;
            con2=(constant) rs2;
        } else {
            con1 = con2 = new constant(0);
        }
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
        boolean flag = false;
        if (rs1==rs) {
            rs1 = en;
            flag = true;
        }
        if (rs2==rs) {
            rs2 = en;
            flag = true;
        }
        if (flag && en instanceof register) ((register) en).uses.add(this);
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

    @Override
    public statement clone(HashMap<register, entity> ValReplace) {
        register shdRd = new register();
        ValReplace.put(rd,shdRd);
        entity shdRs1=rs1,shdRs2=rs2;
        if (rs1 instanceof register) shdRs1 = ValReplace.get(rs1);
        if (rs2 instanceof register) shdRs2 = ValReplace.get(rs2);
        return new icmp(shdRd,shdRs1,shdRs2,cmpOp,rsType);
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