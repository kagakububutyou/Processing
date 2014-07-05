float x, y, z;

void setup(){
 size(500, 500);
 
 z = 50;
 
 x = width / z;
 y = height / z;
 
 
}

void draw(){
   background(255,255, 255);
   
   //stroke(0,255, 0);
   for(int i = 0; i < z * 4; i++)
   {
     stroke(0,0, 0);
     if(i >=   0 && i <=  z)line(width / 2, height / 2, i * x, 0);
     stroke(255,0, 0);
     if(i >=  z && i <= z * 2)line(width / 2, height / 2, width, height - (i % z) * y);
     stroke(0,255, 0);
     if(i >= z * 2 && i <= z * 3)line(width / 2, height / 2, (i % z) * x, height);
     stroke(0,0, 255);
     if(i >= z * 3 && i <= z * 4)line(width / 2, height / 2, 0, (i % z) * y);
   }
}
