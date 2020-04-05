int totalFrames = 479;
int counter = 0;
//boolean record = true;

float arcSize = 200;
float sw, alpha;
float yStep = 10;

void setup(){
  size(1200,1200);

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
background(#eeeeee);
   directionalLight(126, 126, 126, 0, 0, -1);
  ambientLight(102, 102, 102);
  
  mouseX = constrain(mouseX,10,width);
  mouseY = constrain(mouseY,10,height);
  
  yStep = map(sin(percent *TWO_PI),0, 2, 10, height/2);
  //arcSize = mouseX;
  noFill();
  stroke(0);
  strokeWeight(5);
  
  float r = map(sin(percent *TWO_PI),0, 2, 25, 255);
  float b =  map(sin(percent *TWO_PI),0, 2, 25, 255);
  for (int y = 0; y < height; y += yStep){
    sw = map(sin(radians(y)), -1,1, 2, yStep/2);
    strokeWeight(abs(sw));
    stroke(r, 25, b);
    for (int x = 0; x < width+arcSize; x += arcSize){
  arc(x,y, arcSize/2, arcSize/2, 0, PI);
  arc(x+arcSize/2,y, arcSize/2, arcSize/2, PI, TWO_PI);
    }
  }
  
  //if (keyCode == ENTER) {
   // saveFrame("line-######.png");
 // }
}
