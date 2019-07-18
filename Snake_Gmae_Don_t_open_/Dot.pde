class myDot{
  int x;
  int y;
  int w;
  int h;
  color c;
  int xVel;
  int yVel;
  ArrayList<PVector> locations; 
  
  myDot(int x, int y, int w, int h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.locations = new ArrayList<PVector>();
    locations.add(new PVector(x, y));
    c = color(255, 140, 40);
  }
  
  void draw(){
    fill(c);
    //noStroke();
    ellipse(x, y, w, h);
    for(int i =0; i<10; i++){
     // ellipse(x+i*w,y,w,h);
    }
    
    x+=xVel;
    y+=yVel;
    
    if(locations.size() > 1){ 
       PVector currentLocation = new PVector(x, y);
       if(locations.contains(currentLocation)){ 
         c = color(255);
         //where the snake eats itself :(
         locations = new ArrayList<PVector>();
         background(0);
         noStroke();
       }
       else{
         c = color(255, 0, 0);
       }
    }
    
    if(xVel != 0) locations.add(new PVector(x,y));
    if(yVel != 0) locations.add(new PVector(x,y));
    
   
    
    
  }
}
