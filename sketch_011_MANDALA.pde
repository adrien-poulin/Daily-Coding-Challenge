void setup() {
  size(800, 800);
  pixelDensity(2);
  background(#eeeeee);
}
 
void draw() {
  translate(width/2, height/2);
  for (float t = 0; t < 60*TWO_PI; t+=0.5 ) {
    float x = t * cos(t);
    float y = t * sin(t);
 strokeWeight(2);
 stroke((degrees(x)*degrees(y)), 0, 255);
 fill((degrees(x)*degrees(y)), 0, 255);
    ellipse(x, y, 10, 10);
 
  }
} 

void keyPressed() {
  redraw();
  saveFrame("mandala-######.jpg");
}
