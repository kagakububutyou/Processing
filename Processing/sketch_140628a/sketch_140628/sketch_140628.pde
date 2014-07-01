class Ball
{
  float x;
  float y;
  
  float vx, vy;
  
  float a;
  
  Ball(){
   //x = random(width);
   //y = random(height);
   x = width / 2;
   y = height / 2;
   vx = vy = 0;
   a = 1/random(100);
  }
  
  void draw(){
    ellipse(x, y, 20, 20);
  }
  /*
  void moveLeft(){
    x--;
    if(x < 0){
     x = width; 
    }
  }*/
  void updata(){
    
    //moveLeft();
    //moveLeft();
    //moveLeft();
    //x = mouseX;
    //y = mouseY;
    vx = a * (mouseX - x);
    vy = a * (mouseY - y);
    x += vx;
    y += vy;
    
    
  }
}

Ball b1, b2;
ArrayList<Ball> balls;

void setup(){
  size(500, 500);
  balls = new ArrayList<Ball>();
  for(int i = 0; i < 200; i++){
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
   b.updata();
   b.draw(); 
  }
}
