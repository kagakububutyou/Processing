class Node{
  float x,y;
  ArrayList<Node> children;
  Node(float x,float y){
    this.x = x;
    this.y = y;
    children = new ArrayList<Node>();
  }
  void addChildren(Node[] children){
   for(Node node : children){
    this.children.add(node);
   } 
  }
  void draw(){
   ellipse(x,y,10,10);
  for(Node node :children){
     node.draw();
     line(x,y,node.x,node.y);
    } 
  }
  
}

Node root = new Node(50,50);

void setup(){
 size(300,300);
 Node p;
 Node[] cs;
 
 p = root;
 cs = new Node[]{
   new Node(70,100),
 };
 p.addChildren(cs);
 
 p = cs[0];
 cs = new Node[]{
   new Node(150,50),
   new Node(150,200),
 };
 p.addChildren(cs);
 
 Node p1 = cs[0];
 Node p2 = cs[1];
 cs = new Node[]{
  new Node(250,100),
 };
 p1.addChildren(cs);
 p2.addChildren(cs);
}
void draw(){
 background(255);
 root.draw(); 
}
