class Star{
 private int myx,myy;
 public Star(){
  myx=(int)(Math.random()*500); 
  myy=(int)(Math.random()*500); 
 }
  public void show(){
   //fill(255);
   fill(255);
   ellipse(myx, myy, 3, 3);
  }
 
  
}
