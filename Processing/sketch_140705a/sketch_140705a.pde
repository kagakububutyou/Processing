float h, s ,b;

void setup(){
  
  size(300, 300);
  colorMode(HSB);
  h = 0;
  s = b = 255;
  
}

void draw(){
  background(h, s, b);
  
  h++;
  if(255 < h){
   h = 0; 
  }
}
