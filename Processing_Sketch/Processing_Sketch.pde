void setup() {
  size(2000, 2000);
  colorMode(HSB);
}

float c;

void draw () {
  if (c >= 255) c=0;
  else c++;
  background(c, 255, 255);}
