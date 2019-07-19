class edges{
 float sx,ex,sy,ey;
 edges(points a,points b){
   sx=a.loc.x;
   sy=a.loc.y;
   ex=b.loc.x;
   ey=b.loc.y;
 }
 float len(){
   return (dist(sx,sy,ex,ey));
 }
 void show(){
  stroke(120 );
  strokeWeight(1);
  line(sx,sy,ex,ey);
 }
 void showm(){
  stroke(120,0,120);
  strokeWeight(3);
  line(sx,sy,ex,ey);
 }
}
