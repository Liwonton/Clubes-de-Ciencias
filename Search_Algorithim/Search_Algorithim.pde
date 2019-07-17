int x, y;
int wallLocation;
int VelX;
void setup(){
  x = 100;
  y = 100;
  VelX = 5;
  wallLocation = 800;
  size(1000, 500);
}

void draw (){
  fill(0);
  background(255);
  ellipse(x, y, 70, 70);
  x+=VelX;
  if(x>500) VelX = VelX*-1;
  if(x<0) VelX = VelX*-1;
} 
