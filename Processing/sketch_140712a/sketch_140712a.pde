class Mover{
  float x, y;
  float r;
  color c;
  Mover(){
    x = width / 2;
    y = height / 2;
    r = 200;//random(10, 100);
    c = color(0, 0, 255);
  }
  
  void draw(){
    fill(c);
   ellipse(x, y, 2 * r, 2 * r); 
  }
}

Mover mover;

float px;
float py;
float x1;
float y1;

void setup(){
  size(500, 500);
  colorMode(HSB);
  mover = new Mover();
  
}

void draw(){
  background(0, 0, 0);
  mover.draw();
  
  float x, y, r1;  
  x = mouseX;
  y = mouseY;
  r1 = 20;
  fill(255,255,255);
  
  float dx = mouseX - mover.x;
  float dy = mouseY - mover.y;
  float d = sqrt(dx*dx+dy*dy);
  
  float px, py;
  
  px = mouseX;
  py = mouseY;
  
  if(mover.r < d+r1){
    //  外側
    stroke(255/3,255, 255);
    
   px = ((d-r1) - mover.r);
   py = ((d-r1) - mover.r);
   
   //px = (mouseX - mover.r);
   //py = (mouseY - mover.r);
    
  }
  else{ 
    //  内側
    stroke(500/3,255, 255);
  }
  
  line(mover.x, mover.y,px, py);
  ellipse(x, y, 2*r1, 2* r1);
}

