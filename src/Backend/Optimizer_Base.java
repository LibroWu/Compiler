package Backend;

import IR.*;

import javax.swing.plaf.InsetsUIResource;
import java.util.HashSet;
import java.util.ListIterator;

//todo: remove empty block
//todo: remove dead code
//todo: calc const expression
public class Optimizer_Base implements Pass {
    private final HashSet<register> hasUsedReg = new HashSet<>();

    @Override
    public void visitBlock(block b) {
        int successorsSize = b.successors.size();
        if (successorsSize > 0) {
            ListIterator<block> iterator = b.successors.listIterator(successorsSize );
            while (iterator.hasPrevious()) {
                block bl = iterator.previous();
                visitBlock(bl);
            }
        }
        int stmtSize = b.stmts().size();
        ListIterator<statement> iteratorStmt = b.stmts().listIterator(stmtSize);
        while (iteratorStmt.hasPrevious()) {
            statement s = iteratorStmt.previous();;
            if (checkStatement(s))iteratorStmt.remove();
        }
    }

    private boolean checkStatement(statement s) {
        if (s instanceof alloca) {
            alloca a = (alloca) s;
            return !hasUsedReg.contains(a.rd);
        } else if (s instanceof binary) {
            binary b = (binary) s;
            if (hasUsedReg.contains(b.rd)) {
                if (b.rs1 instanceof register) hasUsedReg.add((register) b.rs1);
                if (b.rs2 instanceof register) hasUsedReg.add((register) b.rs2);
                return false;
            } return true;
        } else if (s instanceof br) {
            br branch =  (br) s;
            if (branch.val != null) hasUsedReg.add( branch.val);
            return false;
        } else if (s instanceof call) {
            call c = (call) s;
            c.parameters.forEach( para -> {
                if (para.en instanceof register) hasUsedReg.add((register) para.en);
            });
            return false;
        } else if (s instanceof convertOp) {
            convertOp con = (convertOp) s;
            if (hasUsedReg.contains(con.rd)) {
                if (con.rs instanceof register) hasUsedReg.add((register) con.rs);
                return false;
            } return true;
        } else if (s instanceof getelementptr) {
            getelementptr g = (getelementptr) s;
            if (hasUsedReg.contains(g.rd)) {
                hasUsedReg.add(g.rs);
                if (g.locator1 instanceof register) hasUsedReg.add((register) g.locator1);
                if (g.locator2 instanceof register) hasUsedReg.add((register) g.locator2);
                return false;
            } return true;
        } else if (s instanceof icmp) {
            icmp ic = (icmp) s;
            if (hasUsedReg.contains(ic.rd)) {
                if (ic.rs1 instanceof register) hasUsedReg.add((register) ic.rs1);
                if (ic.rs2 instanceof register) hasUsedReg.add((register) ic.rs2);
                return false;
            } return true;
        } else if (s instanceof load) {
            load l = (load) s;
            if (hasUsedReg.contains(l.rd)) {
                hasUsedReg.add(l.ptr);
                return false;
            } return true;
        } else if (s instanceof phi) {
            phi p = (phi) s;
            if (hasUsedReg.contains(p.rd)) {
                p.entityBlockPairs.forEach( enBl -> {
                    if (enBl.en instanceof register) hasUsedReg.add((register) enBl.en);
                });
                return false;
            } else return true;
        } else if (s instanceof ret) {
            ret r = (ret) s;
            if (r.value instanceof register) {
                hasUsedReg.add((register) r.value);
            }
            return false;
        } else if (s instanceof store) {
            store st = (store) s;
            if (st.resource instanceof  register) hasUsedReg.add((register) st.resource);
            hasUsedReg.add(st.target);
            return false;
        } else if (s instanceof bitcast) {
            bitcast b = (bitcast) s;
            if (hasUsedReg.contains(b.rd)) {
                hasUsedReg.add(b.rs);
                return false;
            } return true;
        }
        return true;
    }

    @Override
    public void visitProgram(program pg) {
        pg.funcDefs.forEach(this::visitFuncDef);
    }

    @Override
    public void visitFuncDef(funcDef f) {
        visitBlock(f.rootBlock);
    }

    @Override
    public void visitClassDef(classDef c) {

    }

    @Override
    public void visitGlobalVarDecl(globalVarDecl gv) {

    }

    @Override
    public void visitGlobalStringConstant(globalStringConstant gs) {

    }

    @Override
    public void visitDeclare(declare dec) {

    }
}
