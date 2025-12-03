class Bullets extends Floater{
  int life;
  public Bullets(Spaceship ship){
    myColor=color(255,255,0);
    myCenterX=a.myCenterX+16*Math.cos(a.myPointDirection*Math.PI/180);
    myCenterY=a.myCenterY+16*Math.sin(a.myPointDirection*Math.PI/180);
    myXspeed=a.myXspeed+10*Math.cos(a.myPointDirection*Math.PI/180);
    myYspeed=a.myYspeed+10*Math.sin(a.myPointDirection*Math.PI/180);
    life=400;
    
  }
  public void show(){
   ellipse((float)myCenterX,(float)myCenterY,10,10);
   life--;
  }
  
  
  
  
  
  
}
