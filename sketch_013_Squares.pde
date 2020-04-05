int w,h;
int border = 600;
int size = 40;
int scl;
int totalFrames = 960;
int counter = 0;

 float r = random(100, 255);
  float b = random(100, 255);


void setup(){
size(2000,2000);  

w = width-border;
h = height-border;
//noLoop();

}

void draw (){
  float percent = float(counter) / totalFrames;
  render(percent);
  saveFrame("output4/squares-"+nf(counter,4)+".jpg");
  counter++;
  if (counter == totalFrames){
   exit();
  }
  
}
  void render(float percent){
  
 
  float angle = percent * TWO_PI;
  background(#eeeeee);
  translate(width/2,height/2);
  scl = w/size;
  rectMode(CENTER);
  //noFill();
  
  rotate(QUARTER_PI);
  //for (float r = 0.1; r <=8; r = r +0.1){
  for (float i = scl; i > 0; i --){
    if (i % 2 == 0){
      fill(r, 255, 0);
      rotate(angle/4);
    }
      else{
        fill(0, 255,b);
        
      }
  rect(0,0,size*i,size*i);
  //println(r);
  }
}
