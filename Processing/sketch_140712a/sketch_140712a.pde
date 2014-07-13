class Mover{
  float x, y;
  float r;
  color c;
  Mover(){
    x = width / 2;
    y = height / 2;
    r = 200;//random(10, 100);
    c = color(random(10,255), 255, 255);
  }
  
  void draw(){
    fill(c);
   ellipse(x, y, 2 * r, 2 * r); 
  }
}

Mover mover;
Mover mover2;

float px;
float py;
float x1;
float y1;

void setup(){
  size(500, 500);
  colorMode(HSB);
  mover = new Mover();
  mover2 =  new Mover();
  
}

void draw(){
  background(100, 255, 255);
  mover.draw();
  
  float x, y, r1;  
  x = mouseX;
  y = mouseY;
  r1 = 20;
  ellipse(x, y, 2*r1, 2* r1);
  float dx = mouseX - mover.x;
  float dy = mouseY - mover.y;
  
  float d = sqrt(dx*dx+dy*dy);
  
  if(mover.r < d+r1) stroke(0,255, 255);
  else{ 
    stroke(100,255, 255);
  }
  
  
  line(mover.x, mover.y,mouseX, mouseY);
  
  if(mover.x - mover.r < mouseX && mover.x + mover.r > mouseX
  && mover.y - mover.r < mouseY && mover.y + mover.r > mouseY)
  {
    mover2.x = mouseX;
    mover2.y = mouseY;
  }
}
//  マウスが押された時
void mousePressed(){
  println("mousePressed");
}
//  マウスが押されている間
void mouseDragged(){
  println("mouseDragged");
}
//  マウスが離された時
void mouseReleased(){
  println("mouseReleased");
  //mover.x = mouseX;
  //mover.y = mouseY;
}

