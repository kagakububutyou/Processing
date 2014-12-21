float Leibniz(){
  float result = 0;
  int sign  = 1;
  for(int i = 0; i < 10000; i++){
    float a = sign * 1.0 /(2 * i + 1);
    result += a;
    sign *= -1;
    
  }
  return 4 * result;
}
float Wallis(){
  float result = 1;
  for(int i = 0; i < 10000; i ++){
    float a = 2*(i + 1);
    result *= a/(a - 1);
    result *= a/(a + 1);
  }
  return 2 * result;
}
float Euler(){
  float result = 0;
  int p2 = 1;
  for(int n = 1; n < 10; n++){
      //float a = 1.0/(n*n*pow(2 , n-1));
      float a = 1.0/(n*n*p2);
      //println(a);
      result += a;
      p2 *= 2;
  }  
  float l2 = log(2);
  return sqrt(6*(result + l2*l2));
  
}
float fact(int n){
 if(n == 0) return 1;
  return n*fact(n - 1);
}
float Ramanujan(){
  float result = 0;
  
  int p4 = 1;
  int p99 = 1;
  int f4 = 1;
  int f = 1;
  
  for(int n = 0; n < 5; n++){
      //float a = fact(4*n)*(1103 + 26390*n);
      //float b = p4 * p99 * fact(n);
      float a = f4*(1103 + 26390*n);
      float b = p4 * p99 * f; 
      //println(a,b);
      result += a/(b*b*b*b);
      p4 *= 4;
      p99 *= 99;
      f4 *= 4*(n + 1);
      f *= (n + 1);
  }
  
  //return 1/(result * 2 * sqrt(2)/(99 * 99));
  return (99 * 99)/(result * 2 * sqrt(2));
}
float BBP(){
   float retult = 0;
   for(int n = 0; n < 100; n++){
     float a = 1.0/pow(2,4*n);
     float b = 4.0/(8*n + 1)
             - 
   }
}
void setup(){
  println("Leibniz;" + Leibniz());
  println("Wallis;" + Wallis());
  println("Euler:" + Euler());
  println("Ramanujan:" + Ramanujan());
  
  println("( ﾟ∀ﾟ)ｱﾊﾊ八八ﾉヽﾉヽﾉヽﾉ ＼ / ＼/ ＼");
}
void draw(){
  
}


