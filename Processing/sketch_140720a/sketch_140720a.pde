class Square{
  float x,y,Width, Height;
  color c;
  Square(){
    x = 100;
    y = 100;
    Width = 200;
    Height = 300;
    c = color(0, 0, 255);
  }
  void draw(){
    fill(c);
    rect(x,y,Width,Height);
  }
  
}
Square square;
void setup(){
  size(500, 500);
  colorMode(HSB);
  square = new Square();
}
void draw(){
  background(0, 0, 0);
  strokeWeight(1);
  square.draw();
  
  float x, y, r1;  
  x = mouseX;
  y = mouseY;
  r1 = 20;
  fill(500/3,255, 255);
   //  二点間の距離
  float d = dist(square.x,square.y,mouseX,mouseY);
  
  fill(500/3,255, 255);
  if(square.x<mouseX - r1 && square.Width + square.x > mouseX + r1
  && square.y<mouseY - r1 && square.Height + square.y > mouseY + r1){
    //  内側
    stroke(500/3,255, 255);
  }else{
    //  外側
    stroke(255/3,255, 255);
  }
  line(square.Width/2+square.x,square.Height/2+square.y,mouseX,mouseY);
  line(square.Width/2+square.x,square.Height/2+square.y,mouseX,square.Height/2+square.y);
  line(mouseX,square.Height/2+square.y,mouseX,mouseY);
  fill(0,255, 255);
  ellipse(x, y, 2*r1, 2* r1);
}
