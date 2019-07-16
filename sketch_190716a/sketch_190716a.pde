int w, h;
int x, y;
int x1, y1;
ArrayList<myDot> dots;
int numDots = 300;

void setup(){
  size(900, 500);
  background(0);
  dots = new ArrayList<myDot>();
  
  for(int i =0; i<numDots; i++){
    x = int(random(width));
    y = int(random(height));
    w = 40;
    h = 40;
    myDot dot = new myDot(x, y, w, h);
    dots.add(dot);
  }
}


void draw(){

  for(myDot d : dots){
    d.drawDot();
  }

}
