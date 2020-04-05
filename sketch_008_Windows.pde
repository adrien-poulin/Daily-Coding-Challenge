int counter = 0;
float r = 0;
float [] radius = new float[8];


void setup(){
  size (800,800);
  for (int i = 0; i < radius.length; i++){
    radius[i] = i*10;
    
  }
}

void draw(){
  background(#eeeeee);
 
 //float r = radius [0];
 
  //println (radius);
  for (float y = 0; y < height; y = y + 100){
    for (int i = 0; i < radius.length; i++){
   float r = radius [i];

     
    //tl, bl
    for (float x = 0; x < width; x = x + 100){
      //tr, br
      //float r = radius [counter];
      rect(5+x, 5+y ,90, 90, r);
      
      
  }
  
    }
}
}
