class Ball
{
  float x;
  float y;
  
  float a;
  
  Ball(){
   //x = random(width);
   //y = random(height);
   x = width / 2;
   y = height / 2;
   translate(width/2, height/2);
  }
  
  void draw(){
    ellipse(x, y, 10, 10);
  }
  
  void moveLeft(int i){
    
      x += 1;
      y += 1; 
    
      
    
      
      if(x < 0){
       x = width / 2;
      }
      if(x > width)
      {
        x = width / 2;
      }
      if(y < 0){
       y = height / 2; 
      }if(y > height)
      {
       y = height / 2;   
      }
      
    }
  void upData(int i){
      moveLeft(i);
    }
}

ArrayList<Ball> balls;
void setup()
{
    size(500, 500);
    balls = new ArrayList<Ball>();
  for(int i = 0; i < 10; i++){
   Ball b = new Ball();
   balls.add(b); 
  }
    
}

void draw()
{
  background(0);
  
   int n = balls.size();
  for(int i = 0; i < n; i++){
   Ball b = balls.get(i);
   b.upData(i);
   b.draw(); 
  }
  
}
