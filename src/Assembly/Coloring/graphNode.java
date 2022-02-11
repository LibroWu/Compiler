package Assembly.Coloring;
import Assembly.Instr.Inst;
import java.util.LinkedList;

public class graphNode {
    public int number,color;
    public LinkedList<graphNode> adjList = new LinkedList<>();
    public LinkedList<Inst> moveList = new LinkedList<>();

}
