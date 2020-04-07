int size;
float size1, size2, size3, size4, size5, size6;


void setup(){
  size(2400, 2400);
  pixelDensity(2);
  background(#eeeeee);
 //noLoop();
  size = 240;
  
 size1 = 2*size/8;
 size2 = 2*size/6;
 size3 = 2*size/4;
 size4 = 2*size/3;
 size5 = 2*size/2;
 size6 = 2*size;
 
 
}

void draw(){
// background(#eeeeee);
  strokeWeight(6);
  for (int y = 0;  y < height; y = y+size){
    for (int x = 0;  x < width; x = x+size){
     // fill(random(0,255), 0, 255, 200);
      //noStroke();
       //rect(x, y ,size, size);
      if (random(10) > 5){
        stroke(0);
        noFill();

        if (random(10) > 5) {
      // arc(size+x, y,size6, size6, PI+HALF_PI,TWO_PI);
       // arc(x+size, y,size5, size5, PI+HALF_PI,TWO_PI);
        // arc(x+size, y,size4, size4, PI+HALF_PI,TWO_PI);
            //arc(x+size, y,size3, size3, PI+HALF_PI,TWO_PI);
            // arc(x+size, y,size2, size2, PI+HALF_PI,TWO_PI);
               //  arc(x+size, y, size1, size1, PI+HALF_PI,TWO_PI);
                           
      }
      
      else {
       // arc(x, y+size,size6, size6,HALF_PI,PI);
       // arc(x, y+size,size5, size5,HALF_PI,PI);
       //   arc(x, y+size,size4, size4, HALF_PI,PI);
       //    arc(x, y+size,size3, size3,HALF_PI,PI);
        //  arc(x, y+size,size2, size2,HALF_PI,PI);
         //        arc(x, y+size,size1, size1, HALF_PI,PI);
                    
        
      }
      }
      if (random(10) > 5){
         
        stroke(0);
      noFill();
       arc(x+size, size+y,size6, size6, PI,PI+HALF_PI);
        arc(x+size, size+y,size5, size5,PI,PI+HALF_PI);
          arc(x+size, size+y,size4, size4, PI,PI+HALF_PI);
            arc(x+size, size+y,size3, size3, PI,PI+HALF_PI);
             arc(x+size, size+y,size2,size2, PI,PI+HALF_PI);
                 arc(x+size, size+y,size1, size1, PI,PI+HALF_PI);
          
    
       
      }
     else {
        push();
        stroke(0);
      noFill();
       arc(x, y,size6, size6, 0, HALF_PI);
       arc(x, y,size5, size5,0, HALF_PI);
         arc(x, y,size4, size4, 0, HALF_PI);
           arc(x, y,size3, size3, 0, HALF_PI);
             arc(x, y,size2, size2, 0, HALF_PI);
          
                arc(x, y,size1,size1, 0, HALF_PI);
                   
      pop();
     }
     
      }
    }


}

void keyPressed(){
  redraw();
  saveFrame("output2/pattenrs_####.jpg");
}
