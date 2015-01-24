PImage[] images;
float vx;
class Invador{
  float x , y;
  void draw(){
    rect(x,y,30,30);  
  }
}
ArrayList<Invador> invadors;
void setup(){
  size(500,500,P2D);
  vx = 1;
  invadors = new ArrayList<Invador>();
  for(int i = 0;i < 5; i++){
   Invador inv = new Invador();
   inv.x = 40 * i;
   inv.y = 0;
   
   invadors.add(inv);
  }
}
boolean isHitWall(){
  Invador inv;
  if(0 < vx){
     inv = invadors.get(invados.size() -1);
  }else{
     inv = invadors.get(0);
  }  
  if(inv.x < 0 || width < inv.x + 30){

   return true; 
  }
 return false; 
}
void draw(){
  background(0);
  
  for(Invador inv : invadors){
   inv.draw();
   inv.x += inv.vx;
   
  }
  
  if(isHitWall()){
   vx *= -1; 
   for(Invador inv: invadors){
     inv.y += 20;
      }
  }
  
}
