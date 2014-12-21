PImage outer, inner;
float theta;

void setup(){
  size(300,300);
  outer = loadImage("outer.png");
  inner = loadImage("inner.png");
  theta = 0;
}

void draw(){
 background(0);
 translate(width/2,height/2);
 imageMode(CENTER);
 image(outer,0,0);
 rotate(theta);
 image(inner,0,0);
 theta += 0.01;
}
