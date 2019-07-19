class Que{
 int ar[];
 int n;
 int f,r;
 Que(int n){
   this.n=n;
   f=-1;
   r=-1;
  ar=new int[n]; 
 }
 void enQ(int e){
   if(f==-1)
   {
     f=0;
     r=0;
   }
   else
   r++;
   ar[r]=e;
 }
 int deQ(){
   int o=ar[f];
  if(f==r){
   f=-1; 
   r=-1;
  }
  else
  f++;
  return o;
 }
}
