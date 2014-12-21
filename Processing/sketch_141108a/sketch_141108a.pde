void setup(){
 size(500,500,P3D); 
}
void quad(PVector v1,PVector v2,PVector v3,PVector v4){
  vertex(v1.x, v1.y, v1.z);
  vertex(v2.x, v2.y, v2.z);
  vertex(v3.x, v3.y, v3.z);
  vertex(v1.x, v1.y, v1.z);
  vertex(v3.x, v3.y, v3.z);
  vertex(v4.x, v4.y, v4.z); 
}
float ry = 0;
void draw(){
  background(100);
  lights();
  beginShape(TRIANGLES);
  translate(width/2,height/2,0);
  rotateY(ry);
  ry += 0.01;
  
  vertex(-100,-100, 100);
  vertex(-100, 100, 100);
  vertex( 100, 100, 100);
  
  vertex( 100, 100, 100);
  vertex( 100,-100, 100);
  vertex(-100,-100, 100);
  
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
  
  endShape();
 
}
