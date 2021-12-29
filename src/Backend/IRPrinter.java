package Backend;

import IR.*;

import java.io.PrintStream;
import java.util.HashMap;

public class IRPrinter implements Pass{
    private PrintStream out;

    private int Cnt = 0;
    private HashMap<block, Integer> blockIndex = null;
    private HashMap<register, Integer> regIndex = null;

    public IRPrinter(PrintStream out) {
        this.out = out;
    }

    @Override
    public void visitBlock(block b) {
        if (b.jumpTo)out.println("\n"+getBlockName(b)+":");
        b.stmts().forEach(this::print);
        b.successors.forEach(this::visitBlock);
    }

    private void runNaming(block b) {
        getBlockName(b);
        for (statement stmt : b.stmts()) {
            runNaming(stmt);
        }
        for (block successor : b.successors) {
            runNaming(successor);
        }
    }

    private void runNaming(statement s){
        if (s instanceof alloca) {
            alloca a = (alloca) s;
            getRegName(a.rd);
        } else if (s instanceof binary) {
            binary b = (binary) s;
            getEntityString(b.rd);
        } else if (s instanceof br) {
        } else if (s instanceof call) {

        } else if (s instanceof constStmt) {

        } else if (s instanceof convertOp) {
            convertOp con = (convertOp) s;
            getRegName(con.rd);
        } else if (s instanceof declare) {

        } else if (s instanceof getelementptr) {

        } else if (s instanceof icmp) {
            icmp ic = (icmp) s;
            getRegName(ic.rd);
        } else if (s instanceof load) {
            load l = (load) s;
            getRegName(l.rd);
        } else if (s instanceof phi) {
            phi p = (phi) s;
            getRegName(p.rd);
        } else if (s instanceof ret) {
        } else if (s instanceof store) {
        }
    }
    @Override
    public void visitProgram(program pg) {
        for (classDef classDef : pg.classDefs) {
            visitClassDef(classDef);
        }
        for (globalVarDecl globalVarDecl : pg.globalVarDecls) {
            visitGlobalVarDecl(globalVarDecl);
        }
        for (funcDef funcDef : pg.funcDefs) {
            visitFuncDef(funcDef);
        }
    }

    @Override
    public void visitFuncDef(funcDef f) {
        Cnt = 0;
        blockIndex = new HashMap<>();
        regIndex = new HashMap<>();
        getBlockName(f.rootBlock);
        for (alloca alloca : f.allocas) {
            runNaming(alloca);
        }
        runNaming(f.rootBlock);
        out.print("define "+getType(f.returnType)+" @"+f.funcId+"(");
        int len = f.parameters.size();
        for (int i=0;i<len;++i) {
            out.println(getType(f.parameters.get(i))+" "+getRegName(f.parameterRegs.get(i)));
            if (i<len-1) out.print(",");
        }
        out.println("){");
        for (alloca alloca : f.allocas) {
            print(alloca);
        }
        visitBlock(f.rootBlock);
        out.println("}");
    }

    @Override
    public void visitClassDef(classDef f) {

    }

    @Override
    public void visitGlobalVarDecl(globalVarDecl gv) {

    }

    private String getType(IRType retType){
        if (retType.isVoid) return "void";
        StringBuilder s = new StringBuilder("i" + retType.iNum);
        int len = retType.ptrNum;
        s.append("*".repeat(Math.max(0, len)));
        if (retType.arrayLen>0) {
            s = new StringBuilder("["+retType.arrayLen+" x " +s.toString()+"]");
        }
        return s.toString();
    }

    private String getBlockName(block b) {
        if (blockIndex.containsKey(b)) return blockIndex.get(b) + "";
        else {
            blockIndex.put(b,Cnt++);
            return (Cnt-1)+"";
        }
    }

    private String getRegName(register r) {
        if (regIndex.containsKey(r)) return "%" + regIndex.get(r);
        else {
            regIndex.put(r,Cnt++);
            return "%" + (Cnt-1);
        }
    }

    private String getEntityString(entity e) {
        if (e instanceof register) return getRegName((register) e);
        else {
            constant constE = (constant) e;
            if (constE.genre== constant.Genre.INT) return constE.getIntValue() + "";
            else if (constE.genre == constant.Genre.STRING) return constE.getStringValue();
            else if (constE.genre== constant.Genre.BOOL) return (constE.getBoolValue()?"true":"false");
            else return "void";
        }
    }

    private String getOp(binary.opTye op) {
        return switch (op) {
            case ADD -> "add";
            case SUB -> "sub";
            case OR -> "or";
            case MUL -> "mul";
            case SDIV -> "sdiv";
            case MOD -> "srem";
            case ASHR -> "ashr";
            case SHL -> "shl";
            default -> "";
        };
    }

    private String getCmpOp(icmp.cmpOpType op) {
        return switch (op) {
            case SLE -> "sle";
            case SLT -> "slt";
            case SGE -> "sge";
            case SGT -> "sgt";
            case EQ -> "eq";
            case NEQ -> "neq";
            default -> "";
        };
    }

    private String getConvertOp(convertOp.convertType op) {
        return switch (op) {
            case TRUNC -> "trunc";
            case SEXT -> "sext";
            case ZEXT -> "zext";
            default -> "";
        };
    }

    private void print(statement s){
        out.print("\t");
        if (s instanceof alloca) {
            alloca a = (alloca) s;
            out.print(getRegName(a.rd)+" = alloca "+getType(a.irType)+", align "+a.align);
        } else if (s instanceof binary) {
            binary b = (binary) s;
            String op = getOp(b.op);
            out.print(getEntityString(b.rd)+" = "+op+" "+getType(b.irType)+" "+getEntityString(b.rs1)+", "+getEntityString(b.rs2));
        } else if (s instanceof br) {
            br b = (br) s;
            if (b.val == null) {
                out.print("br label %"+getBlockName(b.trueBranch));
            } else {
                out.print("br i1 "+getRegName(b.val)+", label %"+getBlockName(b.trueBranch) + ", label %"+getBlockName(b.falseBranch));
            }
        } else if (s instanceof call) {

        } else if (s instanceof constStmt) {

        } else if (s instanceof convertOp) {
            convertOp con = (convertOp) s;
            out.print(getRegName(con.rd)+" = "+getConvertOp(con.convert)+" "+getType(con.rsType)+" "+getEntityString(con.rs)+" to "+getType(con.rdType));
        } else if (s instanceof declare) {

        } else if (s instanceof getelementptr) {

        } else if (s instanceof icmp) {
            icmp ic = (icmp) s;
            out.print(getRegName(ic.rd)+" = icmp "+getCmpOp(ic.cmpOp)+" "+getType(ic.rsType)+" "+getEntityString(ic.rs1)+", "+getEntityString(ic.rs2));
        } else if (s instanceof load) {
            load l = (load) s;
            out.print(getRegName(l.rd)+" = load "+getType(l.rdType) +", "+getType(l.rdType.getPtr())+" "+getRegName(l.ptr)+", align "+l.align);
        } else if (s instanceof phi) {
            phi p = (phi) s;
            out.print(getRegName(p.rd)+" = phi "+getType(p.rdType) + " ");
            int len = p.entityBlockPairs.size();
            for (int i=0;i<len-1;++i) {
                entityBlockPair enBl = p.entityBlockPairs.get(i);
                out.print("[ "+getEntityString(enBl.en)+", %" + getBlockName(enBl.bl)+" ], ");
            }
            entityBlockPair enBl = p.entityBlockPairs.get(len-1);
            out.print("[ "+getEntityString(enBl.en)+", %" + getBlockName(enBl.bl)+" ]");
        } else if (s instanceof ret) {
            ret r = (ret) s;
            out.print("ret "+getType(r.irType)+" "+getEntityString(r.value));
        } else if (s instanceof store) {
            store t = (store) s;
            out.print("store "+getType(t.resourceType)+" "+getEntityString(t.resource)+", "+getType(t.resourceType.getPtr())+" "+getRegName(t.target)+", align "+t.align);
        }
        if (s.Comments!=null) {
            out.println(";"+s.Comments);
        } else out.println();
    }
}
