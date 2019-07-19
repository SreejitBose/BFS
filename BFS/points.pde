class points{
  PVector loc;
  char co;
  points(){
  loc=new PVector(random(width),random(height));
  }
  void turnWhite(){
   fill(255);
   ellipse(loc.x,loc.y,20,20);
  }
  void turnRed(){
    fill(255,0,0);
   ellipse(loc.x,loc.y,20,20);
  }
  void turnBlue(){
    fill(0,0,255);
   ellipse(loc.x,loc.y,20,20);
  }
}
