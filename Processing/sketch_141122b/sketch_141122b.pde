void setup(){
 size(500,500,P3D); 
}
float ry = 0;
void draw(){
  background(100);
  lights();
  beginShape(TRIANGLES);
  translate(width/2,height/2,0);
  rotateY(ry);
  //ry += 0.01;
  
  vertex(  50, 100,  0);
  vertex(  50,-100,  0);
  vertex(  25,-100, 43);
  
  vertex(  50, 100,  0);
  vertex(  25,-100, 43);
  vertex(  25, 100, 43);
  
  
  /*
  vertex(-100,-100, 100);
  vertex(-100,-100,-100);
  vertex(-100, 100, 100);
  
  vertex(-100,-100,-100);
  vertex(-100, 100,-100);
  vertex(-100, 100, 100);
  
  vertex(-100,-100,-100);
  vertex(-100, 100,-100);
  vertex( 100, 100,-100);
  
  vertex( 100, 100,-100);
  vertex( 100,-100,-100);
  vertex(-100,-100,-100);
  */ 
  endShape();
 
}
