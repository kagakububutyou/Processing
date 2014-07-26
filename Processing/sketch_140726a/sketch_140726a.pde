float xh = 70;
float yh = 70;
float xo = 255;
float yo = 55;

void setup(){
 size(500,500);
 colorMode(HSB);
}

void draw(){
 float a = map(mouseX, 0, width, 0, 1);
 float xf = xh + a*(xo - xh);
 float yf = yh + a*(yo - yh); 
 background(xf,255,255);
 line(xh,yh,xo,yo);
 
 ellipse(xf,yf,10,10);
 
 
  
}
