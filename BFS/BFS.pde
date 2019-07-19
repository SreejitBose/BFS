points pa[]=new points[5];

int n=pa.length;
adjMat mat=new adjMat(n);
Que q=new Que(n);
int e=(int)random(n-1,(n*(n-1))/2);
dup d[]=new dup[e];
int l=0;
void setup(){
  size(600,600);
  background(0);
  for(int i=0;i<pa.length;i++){
   pa[i]=new points(); 
   pa[i].co='w';
  }
  for(int i=0;i<d.length;i++){
   d[i]=new dup(-1,-1); 
   d[i].show();
  }
  for(int i=0;i<pa.length;i++){
   pa[i].turnWhite(); 
  }
  while(l!=e){
   int s=(int)random(pa.length);
   int t=(int)random(pa.length); 
   if(checkAllDups(s,t) && s!=t){
     edges y=new edges(pa[s],pa[t]);
     mat.arr[s][t]=1;
     mat.arr[t][s]=1;
     y.show();
     d[l].update(s,t);
     l++;
   }
  }
  println(e);
  for(int i=0;i<d.length;i++){
   d[i].show();
  }
  q.enQ(0);
  pa[0].co='b';
  pa[0].turnBlue();
}

void draw(){
  delay(1000);
  if(q.f!=-1){
    int h=q.deQ();
    pa[h].co='r';
    pa[h].turnRed();
    for(int y=0;y<n;y++){
      if(mat.arr[h][y]==1 && pa[y].co=='w'){
      
       q.enQ(y);
       pa[y].co='b';
       pa[y].turnBlue();
      }
    }
  }
  
}

boolean checkAllDups(int x,int p){
  int i;
 for( i=0;i<d.length;i++){
  if(d[i].check(x,p))
  return false;
 }
 return true;
}
