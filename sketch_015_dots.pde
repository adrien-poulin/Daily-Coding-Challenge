int cols, rows;
int w, h;
int border = 100;
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
  saveFrame("output3/Dots_#####.jpg");
  }
  else{
    exit();
  }
    
     
  for (int i = 0; i < rows; i++){
     float yoff = 10*cos(TWO_PI*counter);
      circley [i] = yoff;
      println(yoff);
      
  }
  
    
    for( int i = 0; i < cols; i++){
      float xoff = 10*sin(TWO_PI*counter);
     circlex [i] = xoff;
      
     
    }
  
  background(0);
  translate (border,border);
   strokeWeight(2);
   stroke(255);
   
     for (int y = 0; y<h-border; y = y + scl){ 
     for (int x = 0; x<w-border; x = x + scl){
       beginShape();
          vertex(5+x, 5+y);
          
          for (int i = 0; i < rows; i++){
          vertex(circlex[i]+5+x, 5+circley[i]+y);
        endShape();
          

        }
       }
      }
      push();
      noFill();
       strokeWeight(5);
       stroke(random(100, 255), 255, 0);
       ellipse(0, 0, 100, 100);
       ellipse(w-border, 0, 100, 100);
       ellipse(w-border, h-border, 100, 100);
        ellipse(0, h-border, 100, 100);
       pop();
       
       
       
 
}
void keyPressed(){
  saveFrame("output/Dots_#####.jpg");
}
