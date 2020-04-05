float sizer  = 80;
float yH = 20;
int totalFrames = 480;
int counter = 0;

float [] y = new float[14];

void setup(){
    
  y[0] = 100;
  y[1] = yH;
  y[2] = yH;
  y[3] = yH;
  y[4] = yH;
  y[5] = yH;
  y[6] = yH;
  y[7] = yH;
  y[8] = yH;
  y[9] = yH;
  y[10] = yH;
  y[11] = yH;
  y[12] = yH;
  y[13] = yH;
  
  size(600,600,P3D);
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
  background(220, 20, 60);
  
  float angle = percent * TWO_PI;
  //float angle2 = percent * -TWO_PI;
  //float size = map(cos(angle), 0, 1, 0, 150);
  //float col = map(cos(angle), 0, 1, 150, 255);
  //float size = 300 * (cos(angle/2));
 
    directionalLight(126, 126, 126, 0, 0, -1);
  ambientLight(102, 102, 102);
  
  
  
  strokeWeight(3);
  rotateY(0.5);
  translate((width/2)-(sizer), 0, 200);
  
  
  for (int i = 0; i < y.length; i++){
    if (i % 2 == 0) {
      stroke(0,191,255);
      fill(0,191,255);
      rotateY(angle);
    }
    else {
      stroke (65,105,225);
      fill(65,105,225);
      rotateY(angle);
    }
  translate(0, y[i]+10, 0);
  box(sizer, 25, sizer);
  translate(0, 0, 0);
  }
  

 
 

  
}
  
  
