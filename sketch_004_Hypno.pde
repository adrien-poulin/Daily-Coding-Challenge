int totalFrames = 240;
int counter = 0;
float d = 1200;
float d2 = d/2;

void setup(){
  size(600,600, P3D);
}

void draw(){
  
  float percent = float(counter) / totalFrames;
  render(percent);
  saveFrame("output/gif-"+nf(counter,4)+".png");
  counter++;
  if (counter == totalFrames){
   exit();
  }
}

void render(float percent){
  background(255, 225, 50);
  
  float angle = percent * TWO_PI;
  float size = map(cos(angle), 0, 1, 0, 150);
  float col = map(cos(angle), 0, 1, 150, 255);
  //float size = 300 * (cos(angle/2));
 
   
  for (d2 = 0; d2 <= d; d2 = d2 + 10){
  translate(0 , 0, size);
  stroke(100, col, 175);
  noFill();
  strokeWeight(2);
  ellipse(width/2, height/2, d2, d2);
 
 
  }
  
}
  
  
