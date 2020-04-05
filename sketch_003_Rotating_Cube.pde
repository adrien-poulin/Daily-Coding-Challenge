int totalFrames = 120;
int counter = 0;

void setup(){
  size(400,400, P3D);
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
  background(0);
  
  float angle = percent * TWO_PI;
  //float size = map(cos(angle), 0, 1, 100, 300);
  float size = 300 * (cos(angle/2));
  translate(width/2, height / 2);
  rectMode(CENTER);
  noFill();
  stroke(255);
  strokeWeight(2);
  rotateY(angle);
  rotateZ(angle/2);
  rotateX(angle*2);
  box(size);
  
  
  
}
