int size, scl, space; // information deciding size of rectangles
float col, col2, col3;
float counter;
void setup(){
  size(2000, 2000);
 pixelDensity(2);
 
 scl = 100;
 space = 25;
 noLoop();
}

void draw (){
  col = random(100, 255);
  col2 = random(100, 255);
  col3 = random(100, 255);
  size = scl - space;
   background(col3, col2, col);
   
   push();
   translate(50,-1800);
   rotate(PI/4);
   fill(col2, col3, col);
   for (int x =0; x<width*2; x=x+scl){
  rect(x,0, size, 2*(height));
   }
   // border
   pop();
   
   pushMatrix();
   fill(col, col2, col3);
   noStroke();
   rect(0,0, width, 100);
   
   for (int i = 0; i < 4; i++){
     rotate(PI/2*i);
    
   rect(0,0,100, height);
  translate(width, height-100);
   }
 popMatrix();
 
}

void keyPressed(){
  redraw();
  
  saveFrame("output/santa_cruz_cols_####.jpg");
}
