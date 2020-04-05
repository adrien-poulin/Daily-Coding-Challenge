int w = 10000;
int h = 2000;
int cols, rows;
int scl = 20;
float z = 0;
float flying;
float percent;



float [][] zoff;

void setup(){
  
  size(1920, 1080, P3D);
  pixelDensity(2);
  cols = w/scl;
  rows = h/scl;
  zoff = new float [cols][rows];
}

void draw(){

 
    percent += 0.1;
  float yoff = (-tan(PI*percent));
  //println (i);
  for (int y= 0; y < rows; y++){
   float xoff = 0;
   for ( int x = 0; x < cols; x++){
  zoff[x][y]= map(noise(xoff, yoff), 0, 1, -50, 50);
  xoff += 0.1;
   }
   yoff += 0.1;
  }

  background(#eeeeee);
  translate(width/2, height/2);
  rotateX(PI/3);
  translate(-w/2,-h/2);
  stroke(0);

  for( int y = 0; y < rows-1; y++){
    beginShape(TRIANGLE_STRIP);
  for( int x = 0; x < cols; x++){
     vertex(x*scl, y*scl, zoff[x][y]);
     vertex(x*scl,(y+1)*scl, zoff[x][y+1]);
    }
    endShape();
}
}
