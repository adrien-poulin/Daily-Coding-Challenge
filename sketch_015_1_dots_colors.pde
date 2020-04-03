int cols, rows;
int w, h;
int border = 300;
float xoff, yoff;
float r = 15;
int scl = 15;
float counter;
float [] circley;
float [] circlex;


void setup(){
  size (2000, 2000);
  
  w = width-border;
  h = height-border;
  cols = w / scl;
  rows = h / scl;
  circley = new float [rows];
  circlex = new float [cols];
  
}

void draw(){

  if (counter <= 1){
  counter += 0.01;
  saveFrame("output5/Dots_red_#####.jpg");
  }
 else{
    exit();
  }
    
     
  for (int i = 0; i < rows; i++){
     float yoff = 100*cos(TWO_PI*counter);
      circley [i] = yoff;
      println(yoff);
      
  }
  
    
    for( int i = 0; i < cols; i++){
      float xoff = 100*sin(TWO_PI*counter);
     circlex [i] = xoff;
      
     
    }
  
  background(#eeeeee);
  translate (border,border);
   strokeWeight(2);
   stroke(125,125,125);
   
     for (int y = 0; y<h-border; y = y + scl){ 
     for (int x = 0; x<w-border; x = x + scl){
       stroke(0, random(100, 255), random(100, 255));
       beginShape();
          vertex(5+x, 5+y);
          for (int i = 0; i < rows; i++){
          vertex(circlex[i]+x+5, 5+circley[i]+y);
        endShape();
          

        }
       }
      }
     
 
}
void keyPressed(){
  saveFrame("output/Dots_#####.jpg");
}
