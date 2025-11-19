class Bullets extends Floater{
  public Bullets(Spaceship ship){
    myColor=color(255,255,0);
    myCenterX=ship.myCenterX+16*Math.cos(ship.myPointDirection*Math.PI/180);
    myCenterY=ship.myCenterY+16*Math.sin(ship.myPointDirection*Math.PI/180);
    myXspeed=ship.myXspeed+10*Math.cos(ship.myPointDirection*Math.PI/180);
    myYspeed=ship.myYspeed+10*Math.sin(ship.myPointDirection*Math.PI/180);
    
  }
  public void show(){
   ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
