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
  /*
  y = ax + b;
  ax + b = y;
  b = y - ax;
 //*/ 
 
  float h = -(1/a);
  float i = (mouseY - height/2) + (1/a)*(mouseX - width/2);
  /*
    y = ax + b;
    y = hx + i;
    
  */
  
  for(float x = -width/2; x < width/2; x += 1)
  {
    float y = h*x + i;
    
    //point(x,y);
  }
  
  float l = (i - b)/(a - h); 
  float m = h*l + i;
  
  //ellipse(l,m,10,10);
  line(l,m,mouseX - width/2,mouseY - height/2);
  //float y = ((mouseY - width/2) + b)/a;
  
  //line(0,mouseY - width/2,mouseX - width/2,mouseY - width/2);
  
  
}
