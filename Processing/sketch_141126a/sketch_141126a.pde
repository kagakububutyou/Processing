void setup(){
 size(500,500); 
}
void draw(){
  background(100);
  translate(width/2,height/2); 
  int n = 16;
  for(float i = 0; i < n;i += 1){
    float theta = i*2*PI/n;
    ellipse(100*cos(theta),100*sin(theta),10,10); 
  }
}
