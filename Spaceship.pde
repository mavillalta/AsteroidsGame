class Spaceship extends Floater{
  public Spaceship(){
    corners=3;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]= -8;
    yCorners[0]= -8;
    xCorners[1]= 16;
    yCorners[1]= 0;
    xCorners[2]= -8;
    yCorners[2]= 8;
    myXspeed=0; 
   myYspeed=0; 
   myCenterX=250;
   myCenterY=250;
   myPointDirection=0;
   myColor=255;
  }
  public void hyperspace(){
   myXspeed=0; 
   myYspeed=0; 
   myCenterX=(int)(Math.random()*500);
   myCenterY=(int)(Math.random()*500);
   myPointDirection=(Math.random()*2*180);
  }
  public void dir(int n){
    myPointDirection+=n;
  }
  public void speed(int n){
     myXspeed+=n*Math.cos(myPointDirection*Math.PI/180); 
     myYspeed+=n*Math.sin(myPointDirection*Math.PI/180); 
  }
  
}
