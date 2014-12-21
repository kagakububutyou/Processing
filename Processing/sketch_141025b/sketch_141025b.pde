void setup(){
 size(500,500, P3D); 
 noStroke();
}

float rot = 0;
void draw(){ 
  background(0);
  lights();  
  
  pushMatrix();
  
  translate(width/2,height/2,0);
  rotateX(rot);
  rotateY(rot);
  rotateZ(rot);
  fill(255);
  box(100);
  popMatrix();
  
  pushMatrix();
  translate(100,100,0);
  rotateX(rot);
  rotateY(rot);
  rotateZ(rot);
  fill(255,0,0);
  scale(3,1,1);
  sphere(30);
  popMatrix();
  
  rot += 0.01;

}
