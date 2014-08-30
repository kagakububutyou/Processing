class Particles
{
 float x, y, r;
 float h,s;
 color c;
 
 float VelocityX;
 float VelocityY;
 
  Particles(){
  x = width/2;
  y = height/2;
  r = 10;
  h = random(0,255);
  s = random(0,255);
  c = color(h, s, 255);
  
  VelocityY = random(1,5);
  VelocityX = random(-5,5);
  
  
  }
  void draw()
  {
    fill(c);
    ellipse(x, y, 2 * r, 2 * r);
  };
  void Update()
  {
    y -= VelocityY;
    x += VelocityX;
  }
}

Particles particles;
ArrayList<Particles> particless;
void setup()
{
 size(500,500);
 colorMode(HSB);
 particless = new ArrayList<Particles>();
 for(int i = 0; i < 200; i++)
 {
   Particles p = new Particles();
   particless.add(p); 
  }
}
void draw()
{
  background(0, 0, 0);
  strokeWeight(1);
  int n = particless.size();
  for(int i = 0; i < n; i++)
  {
   Particles p = particless.get(i);
   p.VelocityY -= 0.1f;
   p.Update();
   p.draw();
  }
}
