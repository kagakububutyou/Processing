void setup(){
 size(500,500); 
}
void draw(){
  background(255);
  translate(width/2,height/2);
  line( 0,-height/2, 0, height/2);
  line( -width/2,0, width/2, 0);
  float px = mouseX - width/2;
  float py = mouseY - width/2;
  ellipse(px,py,10,10);
  
  float x[] = {0,100};
  float y[] = {0,100};
  
  
}
