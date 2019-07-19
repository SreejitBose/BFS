class dup{
 int a,b;
 dup(int a,int b){
  this.a=a; 
  this.b=b;
 }
 void update (int v,int z){
   a=v;
   b=z;
 }
 boolean check(int h,int d){
   if((a==h && b==d) || (a==d && b==h))
   return true;
 else 
 return false;
 }
 void show(){
  println(a+" "+b); 
 }
}
