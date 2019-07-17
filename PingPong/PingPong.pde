int x, y;
int wallLocation;
int VelX;
void setup(){
  x = 100;
  y = 100;
  VelX = 4;
  wallLocation = 800;
  size(1000, 600);
}

void draw (){
  fill(0);
  background(255);
  ellipse(x, y, 70, 70);
  x+=VelX;
  if(x>960) VelX = VelX*-1;
  if(x<40) VelX = VelX*-1;
} 
