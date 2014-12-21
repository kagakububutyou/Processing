import processing.opengl.*;

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

float ry = 0,rx = 0;
void draw(){
  background(100);
  
  translate(width/2,height/2,0);
  rotateX(rx); rotateY(ry); 
  rx += 0.01;ry += 0.01;
  lights();
  beginShape(TRIANGLES); 
  PVector v1 = new PVector( -100, -100,  100);
  PVector v2 = new PVector(  100, -100,  100);
  PVector v3 = new PVector(  100,  100,  100);
  PVector v4 = new PVector( -100,  100,  100);
 
  PVector v5 = new PVector( -100, -100, -100);
  PVector v6 = new PVector(  100, -100, -100);
  PVector v7 = new PVector(  100,  100, -100);
  PVector v8 = new PVector( -100,  100, -100); 
  quad(v1,v2,v3,v4);
  quad(v5,v6,v7,v8);
  quad(v1,v2,v6,v5);
  quad(v2,v3,v7,v6);
  quad(v7,v3,v4,v8);
  quad(v1,v5,v8,v4);
  endShape();
  
}
