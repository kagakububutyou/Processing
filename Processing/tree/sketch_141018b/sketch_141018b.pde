void setup(){
  size(400,400,P3D); 
  noStroke();
}

void draw(){
   background(100);
   lights();
   translate(width/2,height/2);
   beginCamera();
   camera(0,0,100,0,0,0,0,1,0);
   rotateX(map(mouseY,0,height-1,0,PI));
   endCamera();
   rotateY(PI/5);
   rotateX(PI/5);
   fill(255,0,0);
   box(50,10,30);
}
