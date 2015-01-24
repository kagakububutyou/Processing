float x,y;
float vx;

float x1;

void setup(){
   size(500,500,P2D);
   x = 0;
   x1 = 50;
   vx = 1;
}
void draw(){
  background(0);
  
  rect(x,y,30,30);
  rect(x+x1,y,30,30);
    x += vx;
    if(x < 0 || width < x + x1 + 30){
      vx *= -1;
      y += 50;
    }
    
    
  
}
