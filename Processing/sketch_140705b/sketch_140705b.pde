class Mover{
  float x, y;
  float r;
  color c;
  Mover(){
    x = random(width);
    y = random(height);
    r = random(10, 100);
    c = color(random(10,255), 255, 255);
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
  background(100, 255, 255);
  mover.draw();
  //Mover m2 = new Mover();
  //m2.draw();
}
//  マウスが押された時
void mousePressed(){
  println("mousePressed");
  if(mover.x - mover.r < mouseX && mover.x + mover.r > mouseX
  && mover.y - mover.r < mouseY && mover.y + mover.r > mouseY)
  {
    px = mouseX;
    py = mouseY;
    x1 = mover.x;
    y1 = mover.y;
  }
}
//  マウスが押されている間
void mouseDragged(){
  println("mouseDragged");
  if(mover.x - mover.r < mouseX && mover.x + mover.r > mouseX
  && mover.y - mover.r < mouseY && mover.y + mover.r > mouseY)
  {
    float x = mouseX - px;
    float y = mouseY - py;
    
    mover.x = x1 + x;
    mover.y = y1 + y;
  }
}
//  マウスが離された時
void mouseReleased(){
  println("mouseReleased");
  //mover.x = mouseX;
  //mover.y = mouseY;
}

