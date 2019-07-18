int wallLocation;
int w;
int h;
int y;
int x;
myDot dot;

void setup(){
  background(0);
  size(1000, 1000);
  wallLocation = 200;

  colorMode(RGB);
  x = int(random(15, 985));
  y = int(random(15, 985));
  w = 30; h =30;
  dot = new myDot(x, y, w, h);
  //whenever you make a class, you have to add that class to a new dot and add all
  //of it's properties
}

void init(){
  x = int(random(15, 985));
  y = int(random(15, 985));
}
//  myDot(int x, int y, int w, int h){
void draw(){
 //background(100,2);
 dot.draw();
}

void keyPressed(){
  if(key == 'd'){
    dot.xVel = 3;
    dot.yVel = 0;
  }
  if(key == 'a'){
    dot.xVel = -3;
    dot.yVel = 0;
  }
  if(key == 's'){
    dot.yVel = 3;
    dot.xVel = 0;
  }
  if(key == 'w'){
    dot.yVel = -3;
    dot.xVel = 0;
  }
}
