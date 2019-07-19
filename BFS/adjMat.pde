class adjMat{
 int arr[][];
 int n;
 adjMat(int n){
   this.n=n;
  arr=new int[n][n]; 
  for(int j=0;j<n;j++){
   for(int k=0;k<n;k++){
    arr[j][k]=0; 
   }
  }
 }
 int noAdj(int e){
   int c=0;
   for(int i=0;i<n;i++){
    if(arr[e][i]==1)
    c++;
   }
   return c;
 }
}
