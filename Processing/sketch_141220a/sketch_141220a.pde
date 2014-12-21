void setup(){
 size(500,500); 
}
void draw(){
  background(255);
  fill(0, 102, 153);
  println("( ﾟ∀ﾟ)ｱﾊﾊ八八ﾉヽﾉヽﾉヽﾉ ＼ / ＼/ ＼");
  float hoge;
  //float hage;
  float c = 0;
  float d = 0;
  float sign = 1;
  
  float n = 1000000000;
 
  for(int a = 0; a < n; a++)
  {
    
    hoge = 2 * a + 1;
    
    //println(hoge);
    
    float b = sign/hoge;
    
    c = c + b;
    d = c * 4;
    sign *= -1;
    //text(b,100, 10 * a);
    //text(hoge,50, 10 * a);
    //text(hage,0, 10 * a);
  }
  text(d,200, 10);
  println(d);
  text(c,150, 10);
  
}
