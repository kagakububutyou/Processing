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
  noStroke();
  
  translate(width/2,height/2,0);
  rotateX(rx); rotateY(ry); 
  rx = -10;ry += 0.01;
  lights();
  
  int n = 16;
  for(float i = 0; i < n;i += 1){
    float theta = i*2*PI/n;
    
    beginShape(TRIANGLES); 
    PVector v1  = new PVector(  100*cos(theta),  100,   100*sin(theta));
    PVector v2  = new PVector(  100*cos(theta), -100,   100*sin(theta));
    theta = (i+1)*2*PI/n;
    PVector v3  = new PVector(  100*cos(theta),  -100,   100*sin(theta));
    PVector v4  = new PVector(  100*cos(theta),  100,   100*sin(theta));
    
    
    quad(v1,v2,v3,v4);
    
    endShape();
  }
  
}
