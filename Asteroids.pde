class Asteroids extends Floater{
  public double rot;
  public Asteroids(){
    corners=6;
    xCorners=new int[corners];
    yCorners=new int[corners];
    double angle[]= new double[corners];
    for(int i=0;i<corners;i++){
     angle[i]=2*Math.PI*i/6+Math.random()*2*Math.PI/6;
     xCorners[i]=(int)(8*(Math.random()*1.5+1)*Math.cos(angle[i]));
     yCorners[i]=(int)(8*(Math.random()*1.5+1)*Math.sin(angle[i]));
    }
    
   myXspeed=(int)((Math.random()-0.5)*6.7)+0.1; 
   myYspeed=(int)((Math.random()-0.5)*6.7);
   myCenterX=(int)(Math.random()*500);
   myCenterY=(int)(Math.random()*500);
   myPointDirection=0;
   myColor=255;
  rot=-5+10*Math.random();
  rot=rot+5*Math.abs(rot)/rot;
  
    
  }
  public void amove(){
    move();
     turn(rot);
  }
  
}
