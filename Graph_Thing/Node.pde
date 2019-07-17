class Node{
  String name; PVector loc;
  Node(String _name){
    name =_name;
    this.loc = new PVector(random(20, 500), random(30, 400));
  }
  void draw(){
    fill(0); textSize(14);
    fill(0, 20, 235);
    text(name, loc.x, loc.y);
    ellipse(loc.x, loc.y, 20,20);
  }
}
