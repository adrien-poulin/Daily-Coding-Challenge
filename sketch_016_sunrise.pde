//to test : set counter to specific value
// comment save frame
//uncomment noLoo();

PImage bg;
int w = 10000;
int h = 2000;
int cols, rows;
int scl = 20;
int counter= 0; //counter to trigger animation
int var = 0; //animation


int numframes = 240; // nombre de frames dans une boucle
int frame = 0; // frame actuelle (ne pas modifier)
float delta = 1; // décalage de la fonction noise qui se réalise pendant une boucle
float amplitude = 200; // amplitude de la fonction noise

float [][] zoff;

void setup(){

  size(1920, 1080, P3D);
  pixelDensity(2);
  
  cols = w/scl;
  rows = h/scl;
  zoff = new float [cols][rows];
  //noLoop();
}

float curve(float x) {
  return (1.0 - cos(PI * x)) * 0.5;
}

void draw(){
  
  
  background(25, 25, 10+(var/2.5));
  directionalLight(125, 200, 255, 0, -150+(0.5*var), -100);
ambientLight(255, 150, 102);
  frame++;
  counter++;
 
  //*animation start
  
  if (counter < 350){
    var ++;
    
  } 
  if (counter > 350 && counter < 956){
    var = 350;
    
  }
    if (counter > 956) {
      var --;
      println(var);
    }
    if (var == 0){
      exit();
    }
  if(frame == numframes) {
    
    frame = 0;
  }
  
  //*animation end

//* initialize noise field
  float yoff = delta * (frame / (float) numframes);
  //println (i);
  for (int y= 0; y < rows; y++){
    float xoff = 0;
    for ( int x = 0; x < cols; x++){
      zoff[x][y] = (curve(frame / (float) numframes) * noise(xoff, yoff) + curve(1.0 - frame / (float) numframes) * noise(xoff, yoff + delta)) * amplitude - amplitude * 0.5;
      xoff += 0.1;
    }
    yoff += 0.1;
  }
  
  
  translate(width/2, height/2);
  rotateX(PI/3);
  translate(-w/2,-h/2);
  stroke(0);
  fill(125,10,255);
  strokeWeight(2);
  
  
  for( int y = 0; y < rows-1; y++){
    beginShape(TRIANGLE_STRIP);
    for( int x = 0; x < cols; x++){
      vertex(x*scl, y*scl, zoff[x][y]);
      vertex(x*scl,(y+1)*scl, zoff[x][y+1]);
    }
    endShape();
  }
  push();
  translate( width*3-900, -height,-1320+(2.5*var));
  rotateZ(TWO_PI * (delta* 0.05 * (frame / (float) numframes)));
  rotateY(TWO_PI * (delta* 0.05 * (frame / (float) numframes)));
  stroke(0, 125, 255, 55);
  fill(255, 125, 25, 255);
  sphereDetail(90);
  sphere(900);
  
  pop();
  
  push();
 // rotate (PI/3);
 fill(0,125,255, 125);
  translate(0,0,-15);
  rect(1.5*width, 100, 20000, 20000);
  pop();
  saveFrame("output7/looper_final_3-######.jpg");
}

void keyPressed(){
  
  redraw();
}
