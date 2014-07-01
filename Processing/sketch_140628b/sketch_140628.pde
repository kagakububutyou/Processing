class Ball
{
  float x;
  float y;
  
  Ball(){
   x = random(width);
   y = random(height); 
  }
  
  void draw(){
    ellipse(x, y, 20, 20);
  }
  void moveLeft(){
    x--;
    if(x < 0){
     x = width; 
    }
  }
}

Ball b1, b2;
ArrayList<Ball> balls;

void setup(){
  size(500, 500);
  balls = new ArrayList<Ball>();
  for(int i = 0; i < 20; i++){
   Ball b = new Ball();
   balls.add(b); 
  }
}

void draw(){
  //background(0);
  noStroke();
  fill(100, 100, 100, 10);
  rect(0, 0, width, height);
  stroke(1);
  fill(255);
  int n = balls.size();
  for(int i = 0; i < n; i++){
   Ball b = balls.get(i);
   b.moveLeft();
   b.draw(); 
  }
}
