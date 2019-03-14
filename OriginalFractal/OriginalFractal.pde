void setup() {
  fullScreen();
}

float sourceAngle = 0;
float fractalCount = 0;
void draw() {
  background(255);

  sourceAngle = sourceAngle + 0.000001;
  drawFractal(width/6, height/2, 50, (float)(360*Math.sin(sourceAngle)), 25);
}
void drawFractal(float x, float y, float radius, float angle, float fractalCount) {
  
  translate(width/2, height/2);
  for(int i=0;i<fractalCount;i++){
    
    ellipse(0, 0, radius, radius);
    
   
    fill(243,132,12);
    rotate(2);
    translate(-+35,-+35);
    for(int j=0;j<fractalCount;j++){
      rotate(-+angle);
      translate(-+angle,-+angle);
      for(int e = 0; e <fractalCount;e++)
        translate(angle-+.125,angle-+.125);
        ellipse(0,0,radius/2,radius/2);
        for(int d = 0; d <fractalCount;d++)
          translate(angle-+-.25,angle-+-.225);
          rect(0,0,radius/2,radius/2);
          for(int d = 0; d <fractalCount;d++)
            translate(angle-+-.5,angle-+-.5);
            triangle(0,0,0,0,radius/4,radius/4);
        
      
    }
  }
    
}


/*void drawTree(float x, float y, float length, float angle){
 pushMatrix();
 translate(height/2,width/2);
 rotate(radians(angle));
 ellipse(0,0,5,5);
 rect(0,0,10,10);
 
 if(length>1){
 drawTree(length,0, .75*length, angle + 10);
 drawTree(length,0, .75*length, angle - 10);
 
 }
 popMatrix();
 }*/
