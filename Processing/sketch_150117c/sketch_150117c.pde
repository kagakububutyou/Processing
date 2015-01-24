PVector a, b;
float t;
float dt;


void setup(){
  size(500,500);
  a = new PVector(100,100);
  b = new PVector(300,300);
  t = 0;
  dt = 0.01;
  
}
/*
  ease in/out
*/
float f(float t){
  
  
  return t; 
}
void draw(){
   background(0);
   float ft = f(t);
  PVector p =  PVector.add(PVector.mult(a, 1-ft),PVector.mult(b,ft));
   ellipse(p.x,p.y,10,10);
   t += dt;
   if(0 >= t || 1 <= t){
     dt *= -1;
   }
   
   
}

