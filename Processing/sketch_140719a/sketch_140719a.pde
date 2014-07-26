class Mover{
  float x, y;
  float r;
  color c;
  Mover(){
    x = width / 2;
    y = height / 2;
    r = 200;
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
  strokeWeight(1);
  mover.draw();
  
  float x, y, r1;  
  x = mouseX;
  y = mouseY;
  r1 = 20;
  fill(500/3,255, 255);
  
  float dx = mouseX - mover.x;
  float dy = mouseY - mover.y;
  float d = sqrt(dx*dx+dy*dy);
  
  float x2,y2, d2;
  
  if(mover.r < d+r1){
    
    //(mover.r - r1):d = x2 - mover.x:(mouseX - mover.x);
    //x2 - mover.x:(mouseX - mover.x) = (mover.r - r1):d;
    //(x2 - mover.r) * d = (mover.r - r1)*(mouseX - mover.x);
    //x2 - mover.x = ((mover.r - r1) * mouseX -mover.x) / d;
    
    x2 = ((mover.r - r1) * (mouseX - mover.x))/d + mover.x;
    y2 = ((mover.r - r1) * (mouseY - mover.y))/d + mover.y;
    
    
    //  外側
    stroke(255/3,255, 255);
    
  }
  else{
    x2 = mouseX;
    y2 = mouseY;
    //  内側
    stroke(500/3,255, 255);
  }
  stroke(500/3,255, 255);
  //ellipse(x, y, 2*r1, 2* r1);
  //line(mover.x, mover.y,x, y);
  //line(mover.x, mover.y,x, mover.y);
  //line(x,mover.y,x,y);
  
  
  stroke(0,255, 255);
  fill(0,255, 255);
  ellipse(x2, y2, 2*r1, 2* r1);
  strokeWeight(4);
  //line(mover.x,mover.y,x2,y2);
  //line(mover.x,mover.y,x2,mover.y);
  //line(x2,mover.y,x2,y2);
  
  
  
}

