import processing.pdf.*;

int counter = 0;
int r = 10;
int [] radius = new int[8];
int xLimit, yLimit;
int scl = 40;


void setup(){
   size(2000, 2000, PDF, "Windows.pdf");
  pixelDensity(2);
   background(#eeeeee);
   noLoop();
  xLimit = 1800;
  yLimit = 1800;
  for (int i = 0; i < radius.length; i++){
    
    radius[i] = i*r;
  }
}

void draw(){
  strokeWeight(2);
  float b = random(100,255);
  
  translate((width-xLimit)/2, (height - yLimit)/2);
  
  for (float y = 5; y < xLimit; y = y + 100){
   for (float x = 5; x < yLimit; x = x + 100){
   float rdn = (x+y)/3.5;
     fill(b,rdn,b);
      rect(x, y ,90, 90, (x+y)/scl);
    
     }
    }
  exit();
    }
