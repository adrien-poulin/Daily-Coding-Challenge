float aoff;

void setup(){
  size(2000,2000);
  pixelDensity(2);
  noLoop();

  
}

void draw(){
background(#eeeeee);
translate(width/2, height/2);

float r = 700;
float angle = 1;


 for ( float a = 0; a < 360; a = a + angle){
  
 float x = r*(cos(radians(a+aoff)));
 float y = r*(sin(radians(a+aoff)));
 float c = 200*(cos(radians(a)));
 float b = 200*(cos(radians(a)));

 beginShape();
 
 strokeWeight(5);
 stroke(100);
 vertex(x, y);
 vertex(c, b);
 endShape();

}
 }


void keyPressed() {
 redraw();
 saveFrame("output/lines_8-######.jpg");
}
