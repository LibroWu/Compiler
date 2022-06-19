package VM;

import java.util.*;

import Assembly.AsmPg;
import Assembly.Instr.FuncCall;
import Assembly.Operand.Reg;
import Backend.CodeGen.AsmPrinter;
import Backend.CodeGen.InstrSelector;
import IR.*;

public class VMachine {
    public program pg;
    public HashMap<String, FuncState> funcStates;
    private byte[] bytes;
    private int[] regs = new int[32];
    private HashMap<register, Integer> vrMap;
    private HashSet<String> builtinFuncs;
    private HashMap<register,Integer> globalVars;
    private int heapTop,memSize;
    Scanner in = new Scanner(System.in);
    AsmPrinter asmPrinter;
    AsmPg asmPg;
    // memSize for M
    public VMachine(program pg, int memSize,AsmPrinter asmPrinter) {
        this.pg = pg;
        this.memSize = memSize;
        this.asmPrinter = asmPrinter;
        this.asmPg = asmPrinter.asmPg;
        new InstrSelector(asmPg).visitVMProgram(pg);
        builtinFuncs = new HashSet<>();
        builtinFuncs.add("_string_length");//done
        builtinFuncs.add("_string_substring");//done
        builtinFuncs.add("_string_ord");//done
        builtinFuncs.add("_string_stringAppend");//done
        builtinFuncs.add("_string_getStrcmp");//done
        builtinFuncs.add("toString");//done
        builtinFuncs.add("print");//done
        builtinFuncs.add("println");//done
        builtinFuncs.add("printInt");//done
        builtinFuncs.add("printlnInt");//done
        builtinFuncs.add("getInt"); //done
        builtinFuncs.add("getString");//done
        builtinFuncs.add("myNew"); //done
    }

    private int enToInt(entity en) {
        int res=0;
        if (en instanceof constant) res = ((constant)en).getValue();
        else if (vrMap.containsKey(en))res = vrMap.get(en);
        else if (globalVars.containsKey(en)) res = globalVars.get(en);
        return res;
    }
    private int fakeMalloc(int byteNum){
        int res = heapTop;
        heapTop += byteNum;
        return res;
    }

    private int fakeGetInt(){
        int res;
        res = in.nextInt();
        return res;
    }

    private void fakePrintInt(int x){
        System.out.print(x);
    }

    private void fakePrintlnInt(int x) {
        System.out.println(x);
    }

    private void fakePrint(int addr){
        while (bytes[addr]!=0) {
            System.out.print((char) bytes[addr++]);
        }
    }
    private void fakePrintln(int addr){
        while (bytes[addr]!=0) {
            System.out.print((char) bytes[addr++]);
        }
        System.out.println();
    }

    private int fakeStrcmp(int s1,int s2){
        int loc1=0,loc2 =0;
        for (int i=4;i<8;++i) loc1 = (loc1 << 8) + (bytes[s1 + i] & 0xff);
        for (int i=4;i<8;++i) loc2 = (loc2 << 8) + (bytes[s2 + i] & 0xff);
        int i=0;
        while (bytes[loc1+i]>0 && bytes[loc2+i]>0) {
            if (bytes[loc1+i]==bytes[loc2+i]) {
                ++i;
                continue;
            }
            break;
        }
        if (bytes[loc1+i]==bytes[loc2+i])
            return 0;
        if (bytes[loc1+i]>bytes[loc2+i]) {
            return 1;
        } else {
            return -1;
        }
    }

    private int fakeGetString(){
        String s = in.next();
        int length = s.length();
        int sloc = fakeMalloc(12),iloc = fakeMalloc(length+1);
        int res = length;
        for (int i = 4; i > 0; --i) {
            bytes[sloc + i - 1] = (byte) (res & 255);
            res >>= 8;
        }
        res = iloc;
        for (int i = 8; i > 4; --i) {
            bytes[sloc + i - 1] = (byte) (res & 255);
            res >>= 8;
        }
        for (int i=0;i<length;++i) bytes[iloc+i] = (byte) s.charAt(i);
        bytes[iloc+length+1] = 0;
        return sloc;
    }

    private int fakeToString(Integer x){
        String s = x.toString();
        int length = s.length();
        int sloc = fakeMalloc(12),iloc = fakeMalloc(length+1);
        int res = length;
        for (int i = 4; i > 0; --i) {
            bytes[sloc + i - 1] = (byte) (res & 255);
            res >>= 8;
        }
        res = iloc;
        for (int i = 8; i > 4; --i) {
            bytes[sloc + i - 1] = (byte) (res & 255);
            res >>= 8;
        }
        for (int i=0;i<length;++i) bytes[iloc+i] = (byte) s.charAt(i);
        bytes[iloc+length+1] = 0;
        return sloc;
    }

    private int fakeStringAppend(int s1,int s2){
        int loc1=0,loc2 =0,len1=0,len2=0;
        for (int i=4;i<8;++i) loc1 = (loc1 << 8) + (bytes[s1 + i] & 0xff);
        for (int i=4;i<8;++i) loc2 = (loc2 << 8) + (bytes[s2 + i] & 0xff);
        for (int i=0;i<4;++i) len1 = (len1 << 8) + (bytes[s1 + i] & 0xff);
        for (int i=0;i<4;++i) len2 = (len2 << 8) + (bytes[s2 + i] & 0xff);
        int sloc = fakeMalloc(12),iloc = fakeMalloc(len1+len2+1);
        int res = len1+len2;
        for (int i = 4; i > 0; --i) {
            bytes[sloc + i - 1] = (byte) (res & 255);
            res >>= 8;
        }
        res = iloc;
        for (int i = 8; i > 4; --i) {
            bytes[sloc + i - 1] = (byte) (res & 255);
            res >>= 8;
        }
        for (int i=0;i<len1;++i) bytes[iloc+i] = bytes[loc1+i];
        for (int i=0;i<len2+1;++i) bytes[iloc+len1+i] = bytes[loc2+i];
        return sloc;
    }

    private int fakeStringLength(int s){
        int len = 0;
        for (int i=0;i<4;++i) len = (len << 8) + (bytes[s + i] & 0xff);
        return len;
    }

    private int fakeStringOrd(int s,int pos) {
        int loc = 0;
        for (int i=4;i<8;++i) loc = (loc << 8) + (bytes[s + i] & 0xff);
        return bytes[loc+pos] & 0xff;
    }

    private int fakeSubstring(int s,int left,int right) {
        int sloc = fakeMalloc(12),iloc = fakeMalloc(right-left+1);
        int res = right-left;
        for (int i = 4; i > 0; --i) {
            bytes[sloc + i - 1] = (byte) (res & 255);
            res >>= 8;
        }
        res = iloc;
        for (int i = 8; i > 4; --i) {
            bytes[sloc + i - 1] = (byte) (res & 255);
            res >>= 8;
        }
        int loc=0;
        for (int i=4;i<8;++i) loc = (loc << 8) + (bytes[s + i] & 0xff);
        for (int i=0;i<right-left;++i) bytes[iloc+i] = bytes[loc+left+i];
        bytes[iloc+right-left] = 0;
        return sloc;
    }

    private int runBuiltin(call c) {
        int res = 0;
        if (Objects.equals(c.funcName, "myNew")){
            entity en = c.parameters.get(0).en;
            int msize = enToInt(en);
            return fakeMalloc(msize);
        }
        if (Objects.equals(c.funcName,"getInt")) {
            return fakeGetInt();
        }
        if (Objects.equals(c.funcName,"printInt")) {
            entity en = c.parameters.get(0).en;
            int x = enToInt(en);
            fakePrintInt(x);
            return 0;
        }
        if (Objects.equals(c.funcName,"printlnInt")) {
            entity en = c.parameters.get(0).en;
            int x = enToInt(en);
            fakePrintlnInt(x);
            return 0;
        }
        if (Objects.equals(c.funcName,"print")) {
            entity en = c.parameters.get(0).en;
            int addr = enToInt(en);
            fakePrint(addr);
            return 0;
        }
        if (Objects.equals(c.funcName,"println")) {
            entity en = c.parameters.get(0).en;
            int addr = enToInt(en);
            fakePrintln(addr);
            return 0;
        }
        if (Objects.equals(c.funcName,"_string_length")) {
            entity en = c.parameters.get(0).en;
            int s = enToInt(en);
            return fakeStringLength(s);
        }
        if (Objects.equals(c.funcName,"_string_substring")) {
            entity en = c.parameters.get(0).en;
            int s = enToInt(en);
            en = c.parameters.get(1).en;
            int left = enToInt(en);
            en = c.parameters.get(2).en;
            int right = enToInt(en);
            return fakeSubstring(s,left,right);
        }
        if (Objects.equals(c.funcName,"_string_ord")) {
            entity en = c.parameters.get(0).en;
            int s = enToInt(en);
            en = c.parameters.get(1).en;
            int pos = enToInt(en);
            return fakeStringOrd(s,pos);
        }
        if (Objects.equals(c.funcName,"_string_stringAppend")) {
            entity en = c.parameters.get(0).en;
            int s1 = enToInt(en);
            en = c.parameters.get(1).en;
            int s2 = enToInt(en);
            return fakeStringAppend(s1,s2);
        }
        if (Objects.equals(c.funcName,"_string_getStrcmp")) {
            entity en = c.parameters.get(0).en;
            int s1 = enToInt(en);
            en = c.parameters.get(1).en;
            int s2 = enToInt(en);
            return fakeStrcmp(s1,s2);
        }
        if (Objects.equals(c.funcName,"toString")) {
            entity en = c.parameters.get(0).en;
            int x = enToInt(en);
            return fakeToString(x);
        }
        if (Objects.equals(c.funcName,"getString")) {
            return fakeGetString();
        }
        return res;
    }

    private int interpret(funcDef f) {

        block fromBlock = null, currentBlock = f.rootBlock;
        statement currentStmt = currentBlock.headStatement;
        while (true) {
            // true for call
            if (currentStmt.execute(vrMap, globalVars , fromBlock, bytes)) {
                call c = (call) currentStmt;
                if (builtinFuncs.contains(c.funcName)) {
                    int res = runBuiltin(c);
                    if (c.rd != null) vrMap.put(c.rd,res);
                } else {
                    FuncState state = funcStates.get(c.funcName);
                    state.funcCallCnt++;
                    state.tryIROpt();
                    //state.tryAsm(asmPg);
                    if (state.canRunAsm()) {
                        HashMap<String,Integer> stringToVar = new HashMap<>();
                        for (Map.Entry<register, Integer> registerIntegerEntry : globalVars.entrySet()) {
                            register rd = registerIntegerEntry.getKey();
                            stringToVar.put(rd.label,registerIntegerEntry.getValue());
                        }
                        state.runAsm(asmPrinter,stringToVar,vrMap,regs);
                    } else {
                        HashMap<register, Integer> oldVrMap = vrMap;
                        vrMap = new HashMap<>();
                        funcDef callFunc = state.f;
                        int cnt = 0;
                        for (register parameterReg : callFunc.parameterRegs) {
                            int res = 0;
                            entity en = c.parameters.get(cnt++).en;
                            if (en instanceof constant) res = ((constant) en).getValue();
                            else res = oldVrMap.get(en);
                            vrMap.put(parameterReg, res);
                        }
                        int res = interpret(callFunc);
                        vrMap = oldVrMap;
                        if (c.rd != null) vrMap.put(c.rd, res);
                    }
                }
            }
            if (currentStmt.next!=null)
                currentStmt = currentStmt.next;
            else {
                if (currentStmt instanceof br) {
                    br b = (br) currentStmt;
                    fromBlock = currentBlock;
                    if (b.val == null ||vrMap.get(b.val)>0) {
                        currentBlock = b.trueBranch;
                    } else {
                        currentBlock = b.falseBranch;
                    }
                    for (phi phi : currentBlock.Phis) {
                        phi.phiExecute(vrMap,globalVars,fromBlock,bytes);
                    }
                    for (phi phi : currentBlock.Phis) {
                        vrMap.put(phi.rd,phi.exeRes);
                    }
                    currentStmt = currentBlock.headStatement;
                } else {
                    ret r = (ret) currentStmt;
                    if (r.value==null) return 0;
                    else if (r.value instanceof constant) return ((constant)r.value).getValue();
                    else return vrMap.get(r.value);
                }
            }
        }
    }

    public void run() {
        bytes = new byte[memSize*1024*1024];
        vrMap = new HashMap<>();
        for (int i = 0; i < 32; ++i) regs[i] = 0;
        funcStates = new HashMap<>();
        globalVars = new HashMap<>();
        heapTop = 16*1024*1024;

        for (globalVarDecl globalVarDecl : pg.globalVarDecls) {
            int res = 0;
            if (globalVarDecl.rs instanceof constant) res = ((constant)globalVarDecl.rs).getValue();
            globalVars.put(globalVarDecl.rd,res);
        }

        // global string constant
        // copy to heap
        for (globalStringConstant globalStringConstant : pg.globalStringConstants) {
            int siz = globalStringConstant.irType.arrayLen;
            int mloc = fakeMalloc(siz);
            globalStringConstant.rd.label = ".libro.str" + ((globalStringConstant.counter == 0) ? "" : "." + globalStringConstant.counter);
            int length = 0;
            String raw = globalStringConstant.rawString;
            int len = raw.length();
            for (int i = 1; i < len - 1; ++i) {
                char c = raw.charAt(i);
                byte res = (byte) c;
                if (c == '\\') {
                    ++i;
                    char another = raw.charAt(i);
                    if (another == 'n') {
                        res=10;
                    } else if (another == '\\') {
                        res=92;
                    } else if (another == '"') {
                        res=34;
                    }
                }
                bytes[mloc+length++] = res;
            }
            globalVars.put(globalStringConstant.rd,mloc);
        }
        for (funcDef funcDef : pg.funcDefs) {
            funcStates.put(funcDef.funcId, new FuncState(funcDef));
        }
        for (Map.Entry<String, FuncState> SFEntry : funcStates.entrySet()) {
            FuncState state = SFEntry.getValue();
            state.funcAnalysis(funcStates,globalVars);
        }
        for (Map.Entry<String, FuncState> SFEntry : funcStates.entrySet()) {
            FuncState state = SFEntry.getValue();
            state.streamAnalysis();
        }
        int ret = interpret(pg.mainFunc);
        System.out.println();
        System.out.println(ret);
    }
}
