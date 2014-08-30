float xh = 100;
float yh = 255;
float xo = 400;
float yo = 255;

void setup(){
 size(500,500);
 colorMode(HSB);
}

void draw(){
  
 float a = map(mouseX, 0, width, 0, 1);
 float xf = xh + a*(xo - xh);
 float yf = yh + a*(yo - yh);
 float r = map(mouseX,0,width,10,50);
 float h = map(mouseX,0,width,0,255);
 float s = map(mouseY,0,height,0,255);
 background(h,s,255);
 line(xh,yh,xo,yo);
 ellipse(xf,yf,r*2,r*2);
}
