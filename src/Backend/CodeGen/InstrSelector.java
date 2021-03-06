package Backend.CodeGen;

import Assembly.AsmBlock;
import Assembly.*;
import Assembly.Instr.*;
import Assembly.Operand.*;
import Backend.Pass;
import IR.*;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class InstrSelector {
    private HashMap<block, AsmBlock> blockMap = new HashMap<>();
    private HashMap<register, Reg> regMap = new HashMap<>();
    private HashMap<String, Reg> globalVarCache;
    private HashSet<block> blockVisited = null;
    private int cnt = 0, reserveCnt = 0;
    private PhyReg ra, sp, s0, zero, t0, t1, t2, t3, t4, t5, a0;
    private Imm ImmZero = new Imm(0);
    private AsmBlock tailBlock = null;
    private AsmFunc asmFunc = null;
    private LinkedList<phi> Phis = new LinkedList<>();

    public AsmPg asmPg;

    private int getLo(int con) {
        return (0xfffff800) * ((con >> 11) & 1) + (con & 2047);
    }

    public InstrSelector(AsmPg asmPg) {
        this.asmPg = asmPg;
        ra = asmPg.phyRegs.get(1);
        sp = asmPg.phyRegs.get(2);
        s0 = asmPg.phyRegs.get(8);
        zero = asmPg.phyRegs.get(0);
        t0 = asmPg.phyRegs.get(5);
        t1 = asmPg.phyRegs.get(6);
        t2 = asmPg.phyRegs.get(7);
        t3 = asmPg.phyRegs.get(28);
        t4 = asmPg.phyRegs.get(29);
        t5 = asmPg.phyRegs.get(30);
        a0 = asmPg.phyRegs.get(10);
    }

    private AsmBlock getAsmBlock(block b) {
        if (!blockMap.containsKey(b)) {
            AsmBlock asmBlock = new AsmBlock(b.loopDepth);
            asmBlock.comment = b.comment;
            blockMap.put(b, asmBlock);
        }
        return blockMap.get(b);
    }

    private Reg getAsmReg(register r) {
        if (!regMap.containsKey(r)) {
            regMap.put(r, new virtualReg(cnt++));
        }
        return regMap.get(r);
    }

    private int getImmValue(constant c) {
        int value;
        switch (c.genre) {
            case BOOL:
                value = c.getBoolValue() ? 1 : 0;
                break;
            case INT:
                value = c.getIntValue();
                break;
            case VOID:
                value = 0;
                break;
            default: {
                return 0;
            }
        }
        return value;
    }

    public void visitVMProgram(program pg) {
        pg.globalVarDecls.forEach(this::visitGlobalVarDecl);
        pg.globalStringConstants.forEach(this::visitGlobalStringConstant);
    }

    public void visitProgram(program pg) {
        pg.funcDefs.forEach(this::visitFuncDef);
        pg.globalVarDecls.forEach(this::visitGlobalVarDecl);
        pg.globalStringConstants.forEach(this::visitGlobalStringConstant);
    }

    public AsmFunc visitFuncDef(funcDef f) {
        blockVisited = new HashSet<>();
        globalVarCache = new HashMap<>();
        cnt = 0;
        reserveCnt = -2;
        asmFunc = new AsmFunc(f.funcId);
        asmFunc.rootBlock = getAsmBlock(f.rootBlock);
        asmPg.funcS.add(asmFunc);
        //todo parameters,ra,sp
        //todo allocas
        //todo parameter re-store
        int parameterCnt = 0;
        for (register parameterReg : f.parameterRegs) {
            if (parameterCnt < 8) {
                //regMap.put(parameterReg, asmPg.phyRegs.get(10 + parameterCnt));
                asmFunc.rootBlock.push_back(new Mv(getAsmReg(parameterReg), asmPg.phyRegs.get(10 + parameterCnt)));
            } else {
                //rootBlock.push_back(new Ld(getAsmReg(parameterReg), s0, new Imm((parameterCnt - 8) * 4), 4));
                virtualReg vr = (virtualReg) getAsmReg(parameterReg);
                vr.overflow = (parameterCnt - 8) * 4;
                virtualReg another = (virtualReg) getAsmReg(parameterReg);
                int t =another.overflow;
            }
            ++parameterCnt;
        }
        for (alloca alloca : f.allocas) {
            virtualReg vr = new virtualReg(cnt++);
            vr.isAlloc = true;
            regMap.put(alloca.rd, vr);
        }
        Phis.clear();
        tailBlock = null;
        visitBlock(f.rootBlock);
        for (phi p : Phis) {
            Reg rd = new virtualReg(cnt++);
            for (entityBlockPair entityBlockPair : p.entityBlockPairs) {
                entity en = entityBlockPair.en;
                AsmBlock from = getAsmBlock(entityBlockPair.bl);
                Inst i = p.asmParentBlock.JumpFrom.get(from);
                p.asmParentBlock.push_front(new Mv(getAsmReg(p.rd),rd));
                if (i != null) {
                    if (en instanceof constant) {
                        int constValue = getImmValue((constant) en);
                        if (constValue > 2047 || constValue < -2048) {
                            if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                            from.insert_before(i, new Lui(rd, new Imm(constValue >>> 12)));
                            from.insert_before(i, new IType(rd, rd, new Imm(getLo(constValue)), Inst.CalCategory.add));
                        } else
                            from.insert_before(i, new IType(rd, zero, new Imm(constValue), Inst.CalCategory.add));
                    } else {
                        //from.insert_before(i, new Mv(rd, getAsmReg((register) en)));
                        from.insert_before(i, new RType(rd, zero,getAsmReg((register) en), Inst.CalCategory.add));
                    }
                }
            }
        }
        if (tailBlock==null) {
            visitBlock(f.returnBlock);
            tailBlock = getAsmBlock(f.returnBlock);
        }
        asmFunc.tailBlock = tailBlock;
        asmFunc.stackLength = 4 * (cnt - reserveCnt);
        asmFunc.registerCount = asmFunc.originalRegisterCount = cnt;
        asmFunc.allocCount = f.allocas.size();
        asmFunc.stackReserved += 3;
        return asmFunc;
    }

    public void visitBlock(block b) {
        blockVisited.add(b);
        AsmBlock asmBlock = getAsmBlock(b);
        for (statement s=b.headStatement;s!=null;s=s.next) {
            if (s.removed) continue;
            if (s instanceof binary) {
                binary bi = (binary) s;
                Inst.CalCategory op;
                switch (bi.op) {
                    case ADD:
                        op = Inst.CalCategory.add;
                        break;
                    case SUB:
                        op = Inst.CalCategory.sub;
                        break;
                    case MUL:
                        op = Inst.CalCategory.mul;
                        break;
                    case SDIV:
                        op = Inst.CalCategory.div;
                        break;
                    case MOD:
                        op = Inst.CalCategory.rem;
                        break;
                    case AND:
                        op = Inst.CalCategory.and;
                        break;
                    case OR:
                        op = Inst.CalCategory.or;
                        break;
                    case XOR:
                        op = Inst.CalCategory.xor;
                        break;
                    case ASHR:
                        op = Inst.CalCategory.sra;
                        break;
                    case LSHR:
                        op = Inst.CalCategory.srl;
                        break;
                    case SHL:
                        op = Inst.CalCategory.sll;
                        break;
                    default:
                        op = null;
                }
                Reg rd = getAsmReg(bi.rd);
                if (bi.rs1 instanceof constant) {
                    int constValue = getImmValue((constant) bi.rs1);
                    if (constValue > 2047 || constValue < -2048) {
                        if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                        asmBlock.push_back(new Lui(rd, new Imm(constValue >>> 12)));
                        asmBlock.push_back(new IType(rd, rd, new Imm(getLo(constValue)), Inst.CalCategory.add));
                    } else asmBlock.push_back(new IType(rd, zero, new Imm(constValue), Inst.CalCategory.add));
                    Reg rs;
                    if (bi.rs2 instanceof constant) {
                        //todo calc const expression
                        rs = new virtualReg(cnt++);
                        int constValue1 = getImmValue((constant) bi.rs2);
                        if (constValue1 > 2047 || constValue1 < -2048) {
                            if (((constValue1 >> 11) & 1) > 0) constValue1 += 1 << 12;
                            asmBlock.push_back(new Lui(rs, new Imm(constValue1 >>> 12)));
                            asmBlock.push_back(new IType(rs, rs, new Imm(getLo(constValue1)), Inst.CalCategory.add));
                        } else asmBlock.push_back(new IType(rs, zero, new Imm(constValue1), Inst.CalCategory.add));
                    } else {
                        rs = getAsmReg((register) bi.rs2);
                    }
                    asmBlock.push_back(new RType(rd, rd, rs, op));
                } else {
                    if (bi.rs2 instanceof constant) {
                        int constValue = getImmValue((constant) bi.rs2);
                        if (op == Inst.CalCategory.mul) {
                            if (constValue > 0 && (constValue ^ (constValue & -constValue)) == 0) {
                                int shiftCount = -1;
                                while (constValue > 0) {
                                    ++shiftCount;
                                    constValue >>= 1;
                                }
                                asmBlock.push_back(new IType(rd, getAsmReg((register) bi.rs1), new Imm(shiftCount), Inst.CalCategory.sll));
                            } else {
                                if (constValue > 2047 || constValue < -2048) {
                                    if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                                    asmBlock.push_back(new Lui(rd, new Imm(constValue >>> 12)));
                                    asmBlock.push_back(new IType(rd, rd, new Imm(getLo(constValue)), Inst.CalCategory.add));
                                } else
                                    asmBlock.push_back(new IType(rd, zero, new Imm(constValue), Inst.CalCategory.add));
                                asmBlock.push_back(new RType(rd, getAsmReg((register) bi.rs1), rd, op));
                            }
                        } else if (op == Inst.CalCategory.div) {
                            if (constValue > 0 && (constValue ^ (constValue & -constValue)) == 0) {
                                int shiftCount = -1;
                                while (constValue > 0) {
                                    ++shiftCount;
                                    constValue >>= 1;
                                }
                                asmBlock.push_back(new IType(rd, getAsmReg((register) bi.rs1), new Imm(shiftCount), Inst.CalCategory.sra));
                            } else {
                                if (constValue > 2047 || constValue < -2048) {
                                    if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                                    asmBlock.push_back(new Lui(rd, new Imm(constValue >>> 12)));
                                    asmBlock.push_back(new IType(rd, rd, new Imm(getLo(constValue)), Inst.CalCategory.add));
                                } else
                                    asmBlock.push_back(new IType(rd, zero, new Imm(constValue), Inst.CalCategory.add));
                                asmBlock.push_back(new RType(rd, getAsmReg((register) bi.rs1), rd, op));
                            }
                        } else if (op == Inst.CalCategory.rem) {
                            if (constValue > 0 && (constValue ^ (constValue & -constValue)) == 0) {
                                int shiftCount = -1;
                                while (constValue > 0) {
                                    ++shiftCount;
                                    constValue >>= 1;
                                }
                                asmBlock.push_back(new IType(rd, getAsmReg((register) bi.rs1), new Imm((1 << shiftCount) - 1), Inst.CalCategory.and));
                            } else {
                                if (constValue > 2047 || constValue < -2048) {
                                    if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                                    asmBlock.push_back(new Lui(rd, new Imm(constValue >>> 12)));
                                    asmBlock.push_back(new IType(rd, rd, new Imm(getLo(constValue)), Inst.CalCategory.add));
                                } else
                                    asmBlock.push_back(new IType(rd, zero, new Imm(constValue), Inst.CalCategory.add));
                                asmBlock.push_back(new RType(rd, getAsmReg((register) bi.rs1), rd, op));
                            }
                        } else {
                            if (op == Inst.CalCategory.sub) {
                                constValue = -constValue;
                                op = Inst.CalCategory.add;
                            }
                            if (constValue > 2047 || constValue < -2048) {
                                if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                                asmBlock.push_back(new Lui(rd, new Imm(constValue >>> 12)));
                                asmBlock.push_back(new IType(rd, rd, new Imm(getLo(constValue)), Inst.CalCategory.add));
                                asmBlock.push_back(new RType(rd, getAsmReg((register) bi.rs1), rd, op));
                            } else
                                asmBlock.push_back(new IType(rd, getAsmReg((register) bi.rs1), new Imm(constValue), op));
                        }
                    } else {
                        asmBlock.push_back(new RType(rd, getAsmReg((register) bi.rs1), getAsmReg((register) bi.rs2), op));
                    }
                }
            } else if (s instanceof br) {
                br branch = (br) s;
                if (branch.val == null) {
                    AsmBlock target = getAsmBlock(branch.trueBranch);
                    Jp jp = new Jp(target);
                    target.JumpFrom.put(asmBlock, jp);
                    asmBlock.push_back(jp);
                } else {
                    AsmBlock targetT = getAsmBlock(branch.trueBranch), targetF = getAsmBlock(branch.falseBranch);
                    Jp jpT = new Jp(targetT);
                    targetT.JumpFrom.put(asmBlock, jpT);
                    Inst tailInst = asmBlock.tailInst;
                    Br brF;
                    boolean flag = true;
                    if (tailInst instanceof RType) {
                        RType rType = (RType) tailInst;
                        if (rType.op.ordinal() > 10) {
                            flag = false;
                            Inst.CompareCategory compareCategory = Inst.CompareCategory.eq;
                            switch (rType.op) {
                                case slt:
                                    compareCategory = Inst.CompareCategory.ge;
                                    break;
                                case seq:
                                    compareCategory = Inst.CompareCategory.eq;
                                    break;
                                case sne:
                                    compareCategory = Inst.CompareCategory.ne;
                                    break;
                                case sgt:
                                    compareCategory = Inst.CompareCategory.lt;
                                    break;
                            }
                            brF = new Br(compareCategory, rType.rs1, rType.rs2, targetF);
                            targetF.JumpFrom.put(asmBlock, brF);
                            asmBlock.delete_Inst(tailInst);
                            asmBlock.push_back(brF);
                        }
                    } else if (tailInst instanceof IType) {
                        IType iType = (IType) tailInst;
                        if (iType.op == Inst.CalCategory.seq || iType.op == Inst.CalCategory.sne) {
                            flag = false;
                            Inst.CompareCategory compareCategory = Inst.CompareCategory.eq;
                            switch (iType.op) {
                                case seq:
                                    compareCategory = Inst.CompareCategory.ne;
                                    break;
                                case sne:
                                    compareCategory = Inst.CompareCategory.eq;
                                    break;
                            }
                            brF = new Br(compareCategory, iType.rs, null, targetF);
                            targetF.JumpFrom.put(asmBlock, brF);
                            asmBlock.delete_Inst(tailInst);
                            asmBlock.push_back(brF);
                        }
                    }
                    if (flag) {
                        brF = new Br(Inst.CompareCategory.eq, getAsmReg(branch.val), null, targetF);
                        targetF.JumpFrom.put(asmBlock, brF);
                        asmBlock.push_back(brF);
                    }
                    asmBlock.push_back(jpT);
                }
            } else if (s instanceof call) {
                call c = (call) s;
                int parameterCnt = 0;
                FuncCall funcCall = new FuncCall(c.funcName);
                for (entityTypePair parameter : c.parameters) {
                    Reg rs;
                    entity en = parameter.en;
                    if (en instanceof constant) {
                        rs = new virtualReg(cnt++);
                        int constValue = getImmValue((constant) en);
                        if (constValue > 2047 || constValue < -2048) {
                            if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                            asmBlock.push_back(new Lui(rs, new Imm(constValue >>> 12)));
                            asmBlock.push_back(new IType(rs, rs, new Imm(getLo(constValue)), Inst.CalCategory.add));
                        } else asmBlock.push_back(new IType(rs, zero, new Imm(constValue), Inst.CalCategory.add));
                    } else {
                        rs = getAsmReg((register) en);
                    }
                    if (parameterCnt < 8) {
                        asmBlock.push_back(new Mv(asmPg.phyRegs.get(parameterCnt + 10), rs));
                    } else {
                        asmBlock.push_back(new St(rs, sp, new Imm((parameterCnt - 8) * 4), 4));
                    }
                    funcCall.parameters.add(rs);
                    parameterCnt++;
                }
                if (c.parameters.size() - 7 > asmFunc.callSpilledCount)
                    asmFunc.callSpilledCount = c.parameters.size() - 7;
                asmBlock.push_back(funcCall);
                if (c.rd != null) {
                    asmBlock.push_back(new Mv(getAsmReg(c.rd), a0));
                }
            } else if (s instanceof convertOp) {
                convertOp con = (convertOp) s;
                if (con.rs instanceof constant) {
                    Reg rs = new virtualReg(cnt++);
                    int constValue = getImmValue((constant) con.rs);
                    if (constValue > 2047 || constValue < -2048) {
                        if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                        asmBlock.push_back(new Lui(rs, new Imm(constValue >>> 12)));
                        asmBlock.push_back(new IType(rs, rs, new Imm(getLo(constValue)), Inst.CalCategory.add));
                    } else asmBlock.push_back(new IType(rs, zero, new Imm(constValue), Inst.CalCategory.add));
                    virtualReg vr = (virtualReg) getAsmReg(con.rd);
                    asmBlock.push_back(new Mv(vr, rs));
                } else {
                    regMap.put(con.rd, getAsmReg((register) con.rs));
                }
            } else if (s instanceof getelementptr) {
                getelementptr getelem = (getelementptr) s;
                IRType irType = getelem.rsType;
                Reg rd = getAsmReg(getelem.rd), rs = getAsmReg(getelem.rs);
                if (irType.cDef == null) {
                    //array
                    int atomSize = irType.reducePtr().getSize();
                    entity en = getelem.locator1;
                    if (en instanceof constant) {
                        int constValue = getImmValue((constant) en) * atomSize;
                        if (constValue > 2047 || constValue < -2048) {
                            if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                            Reg tmpReg = new virtualReg(cnt++);
                            asmBlock.push_back(new Lui(tmpReg, new Imm(constValue >>> 12)));
                            asmBlock.push_back(new IType(tmpReg, tmpReg, new Imm(getLo(constValue)), Inst.CalCategory.add));
                            asmBlock.push_back(new RType(rd, rs, tmpReg, Inst.CalCategory.add));
                        } else asmBlock.push_back(new IType(rd, rs, new Imm(constValue), Inst.CalCategory.add));
                    } else {
                        Reg tmp = getAsmReg((register) en);
                        if (atomSize > 1) {
                            int constValue = atomSize;
                            if ((constValue ^ constValue & -constValue) == 0) {
                                int shiftCount = -1;
                                while (constValue > 0) {
                                    ++shiftCount;
                                    constValue >>= 1;
                                }
                                asmBlock.push_back(new IType(tmp, tmp, new Imm(shiftCount), Inst.CalCategory.sll));
                            } else {
                                virtualReg constContainer = new virtualReg(cnt++);
                                if (constValue > 2047 || constValue < -2048) {
                                    if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                                    asmBlock.push_back(new Lui(constContainer, new Imm(constValue >>> 12)));
                                    asmBlock.push_back(new IType(constContainer, constContainer, new Imm(getLo(constValue)), Inst.CalCategory.add));
                                } else
                                    asmBlock.push_back(new IType(constContainer, zero, new Imm(constValue), Inst.CalCategory.add));
                                asmBlock.push_back(new RType(tmp, tmp, constContainer, Inst.CalCategory.mul));
                            }
                        }
                        asmBlock.push_back(new RType(rd, rs, tmp, Inst.CalCategory.add));
                    }
                } else {
                    //class
                    classDef cDef = irType.cDef;
                    constant con = (constant) getelem.locator2;
                    IRTypeWithCounter irTypeWithCounter = cDef.memberForAsm.get(con.getIntValue());
                    int offset;
                    if (cDef.align == 1) offset = irTypeWithCounter.offset1;
                    else offset = irTypeWithCounter.offset4;
                    asmBlock.push_back(new IType(rd, rs, new Imm(offset), Inst.CalCategory.add));
                }
            } else if (s instanceof icmp) {
                icmp ic = (icmp) s;
                Reg rd = getAsmReg(ic.rd), rs1, rs2;
                if (ic.rs1 instanceof constant) {
                    rs1 = new virtualReg(cnt++);
                    int constValue = getImmValue((constant) ic.rs1);
                    if (constValue > 2047 || constValue < -2048) {
                        if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                        asmBlock.push_back(new Lui(rs1, new Imm(constValue >>> 12)));
                        asmBlock.push_back(new IType(rs1, rs1, new Imm(getLo(constValue)), Inst.CalCategory.add));
                    } else asmBlock.push_back(new IType(rs1, zero, new Imm(constValue), Inst.CalCategory.add));
                } else {
                    rs1 = getAsmReg((register) ic.rs1);
                }
                if (ic.rs2 instanceof constant) {
                    rs2 = new virtualReg(cnt++);
                    int constValue1 = getImmValue((constant) ic.rs2);
                    if (constValue1 > 2047 || constValue1 < -2048) {
                        if (((constValue1 >> 11) & 1) > 0) constValue1 += 1 << 12;
                        asmBlock.push_back(new Lui(rs2, new Imm(constValue1 >>> 12)));
                        asmBlock.push_back(new IType(rs2, rs2, new Imm(getLo(constValue1)), Inst.CalCategory.add));
                    } else asmBlock.push_back(new IType(rs2, zero, new Imm(constValue1), Inst.CalCategory.add));
                } else {
                    rs2 = getAsmReg((register) ic.rs2);
                }
                switch (ic.cmpOp) {
                    case SLT:
                        asmBlock.push_back(new RType(rd, rs1, rs2, Inst.CalCategory.slt));
                        break;
                    case SLE: {
                        Reg tmpRg = new virtualReg(cnt++);
                        asmBlock.push_back(new RType(tmpRg, rs2, rs1, Inst.CalCategory.slt));
                        asmBlock.push_back(new IType(rd, tmpRg, ImmZero, Inst.CalCategory.seq));
                        break;
                    }
                    case SGT:
                        asmBlock.push_back(new RType(rd, rs2, rs1, Inst.CalCategory.slt));
                        break;
                    case SGE: {
                        Reg tmpRg = new virtualReg(cnt++);
                        asmBlock.push_back(new RType(tmpRg, rs1, rs2, Inst.CalCategory.slt));
                        asmBlock.push_back(new IType(rd, tmpRg, ImmZero, Inst.CalCategory.seq));
                        break;
                    }
                    case EQ: {
                        Reg tmpRg = new virtualReg(cnt++);
                        asmBlock.push_back(new RType(tmpRg, rs1, rs2, Inst.CalCategory.xor));
                        asmBlock.push_back(new IType(rd, tmpRg, ImmZero, Inst.CalCategory.seq));
                        break;
                    }
                    case NEQ: {
                        Reg tmpRg = new virtualReg(cnt++);
                        asmBlock.push_back(new RType(tmpRg, rs1, rs2, Inst.CalCategory.xor));
                        asmBlock.push_back(new IType(rd, tmpRg, ImmZero, Inst.CalCategory.sne));
                        break;
                    }
                }
            } else if (s instanceof load) {
                load l = (load) s;
                String label = l.ptr.label;
                if (label != null) {
                    Reg tmpReg;
                    if (globalVarCache.containsKey(label)) tmpReg = globalVarCache.get(label);
                    else {
                        tmpReg = new virtualReg(cnt++);
                        //globalVarCache.put(label,tmpReg);
                        asmBlock.push_back(new La(tmpReg, label));
                    }
                    asmBlock.push_back(new Ld(getAsmReg(l.rd), tmpReg, ImmZero, l.align));
                } else {
                    virtualReg vr = (virtualReg) getAsmReg(l.ptr);
                    if (vr.overflow>=0)
                        asmBlock.push_back(new Ld(getAsmReg(l.rd), s0, new Imm(vr.overflow), l.align));
                    else if (vr.isAlloc)
                        asmBlock.push_back(new Mv(getAsmReg(l.rd), vr));
                    else if (vr.index < 0)
                        asmBlock.push_back(new Ld(getAsmReg(l.rd), s0, new Imm(vr.index * 4), l.align));
                    else asmBlock.push_back(new Ld(getAsmReg(l.rd), vr, ImmZero, l.align));
                }
            } else if (s instanceof phi) {
                phi p = (phi) s;
                p.asmParentBlock = asmBlock;
                Phis.add(p);
            } else if (s instanceof ret) {
                ret r = (ret) s;
                tailBlock = asmBlock;
                if (r.value != null) {
                    if (r.value instanceof register)
                        asmBlock.push_back(
                                new Mv(asmPg.phyRegs.get(10), getAsmReg((register) r.value))
                        );
                    else asmBlock.push_back(
                            new Li(asmPg.phyRegs.get(10), new Imm(getImmValue((constant) r.value)))
                    );
                }   // First move the return value to x10, then return
                asmBlock.push_back(new Ret());
            } else if (s instanceof store) {
                store st = (store) s;
                Reg rs;
                if (st.resource instanceof constant) {
                    rs = new virtualReg(cnt++);
                    int constValue = getImmValue((constant) st.resource);
                    if (constValue > 2047 || constValue < -2048) {
                        if (((constValue >> 11) & 1) > 0) constValue += 1 << 12;
                        asmBlock.push_back(new Lui(rs, new Imm(constValue >>> 12)));
                        asmBlock.push_back(new IType(rs, rs, new Imm(getLo(constValue)), Inst.CalCategory.add));
                    } else asmBlock.push_back(new IType(rs, zero, new Imm(constValue), Inst.CalCategory.add));
                } else {
                    rs = getAsmReg((register) st.resource);
                }
                String label = st.target.label;
                if (label != null) {
                    Reg tmpReg;
                    if (globalVarCache.containsKey(label)) tmpReg = globalVarCache.get(label);
                    else {
                        tmpReg = new virtualReg(cnt++);
                        //globalVarCache.put(label,tmpReg);
                        asmBlock.push_back(new La(tmpReg, label));
                    }
                    asmBlock.push_back(new St(rs, tmpReg, ImmZero, st.align));
                } else {
                    virtualReg vr = (virtualReg) getAsmReg(st.target);
                    if (rs instanceof virtualReg && ((virtualReg) rs).overflow>=0) {
                        if (!vr.isAlloc)asmBlock.push_back(new St(vr, s0, new Imm(((virtualReg) rs).overflow), 4));
                    }
                    else if (vr.isAlloc)
                        asmBlock.push_back(new Mv(vr, rs));
                    else if (vr.index < 0)
                        asmBlock.push_back(new St(rs, s0, new Imm(vr.index * 4), 4));
                    else asmBlock.push_back(new St(rs, vr, ImmZero, st.align));
                }
            } else if (s instanceof bitcast) {
                bitcast bit = (bitcast) s;
                if (bit.rs.label != null) {
                    asmBlock.push_back(new La(getAsmReg(bit.rd), bit.rs.label));
                } else regMap.put(bit.rd, getAsmReg(bit.rs));
            }
        }
        for (block successor : b.successors) {
            if (!blockVisited.contains(successor)) {
                asmBlock.successors.add(getAsmBlock(successor));
                visitBlock(successor);
            }
        }
    }

    public void visitGlobalVarDecl(globalVarDecl gv) {
        asmPg.globals.add(new AsmGlobal(gv.name, gv.align, "" + getImmValue((constant) gv.rs), false));
    }

    public void visitGlobalStringConstant(globalStringConstant gs) {
        asmPg.globals.add(new AsmGlobal(".libro.str" + ((gs.counter == 0) ? "" : "." + gs.counter), gs.irType.arrayLen, gs.rawString, true));
    }

}
