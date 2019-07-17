ArrayList<Edge> edges;
HashSet<Node> nodes; //Set = collection of items unordered (think about a blob of things)//
int numNodes = 20;
float c;
void setup(){
  size(1200, 700);
  colorMode(RGB);
  init();
}

void init(){
    edges = new ArrayList<Edge>();
  nodes = new HashSet<Node>();
  for(int i = 0; i<numNodes; i++){
    Node n = new Node(str(i));
    nodes.add(n);
  }
  for(Node n1 : nodes){
    for(Node n2 : nodes){
      float r = random(0, 1);
      if(r <0.4){
        Edge e = new Edge(n1, n2);
        edges.add(e);
      }
    }
  }
}

void draw(){
  background(255);
  for(Edge e :edges) e.draw();
  for(Node n :nodes) n.draw(); 
  if(c >= 255) c=0;
  else c++;
}
