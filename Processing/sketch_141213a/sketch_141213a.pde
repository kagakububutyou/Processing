void setup(){
 size(500,500); 
}
void draw(){
  background(255);
  translate(width/2,height/2);
  line( 0,-height/2, 0, height/2);
  line( -width/2,0, width/2, 0);
  
  float b = -100;
  float a = -2;
  
  float c = a/b;
  
  for(float x = -width/2; x < width/2; x += 2)
  {
    float y = a*x + b;
    
    point(x,y);
  }
  float px = mouseX - width/2;
  float py = mouseY - width/2;
  float pa = a *(py - b);
  float aa = a * a;
  /*
    qy = aqy + b;;
    (1,a)*(px - qx, py - qy) = 0;
                ↓
    1 * (px - qx) + a(py - qy) = 0;
    (ry
  */
  float qx = (px + a *(py - b))/(1 + a * a);
  float qy = a * qx + b; 
  
  line(qx,qy,mouseX - width/2,mouseY - width/2);
}
