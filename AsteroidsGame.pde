Spaceship a;
ArrayList<Asteroids> b= new ArrayList();
 Star[] s= new Star[200];
ArrayList<Bullets> c= new ArrayList();
void setup(){
 size(500,500); 
 a=new Spaceship();
 c.add(new Bullets(a));
 for(int i=0;i<15;i++){
  b.add(new Asteroids());
 }
 for(int i=0;i<200;i++){
  s[i]=new Star();
 }
}
void draw(){
  background(0);
  for(int i=0;i<200;i++){
   s[i].show();
  }
  a.show();
  a.move(); 
  for(int i=0;i<c.size()-1;i++){
     c.get(i).move();
     c.get(i).show();
     for(int j=0;j<b.size()-1;j++){
       if((dist((float)c.get(i).myCenterX,(float)c.get(i).myCenterY,(float)b.get(j).myCenterX,(float)b.get(j).myCenterY)<20)){
         b.remove(j);
         c.remove(i);
     //b.add(new Asteroids());
   }
     }
     
  }
   for(int i=0;i<b.size();i++){
     b.get(i).amove();
     b.get(i).show();   
  }
  for(int i=0;i<b.size();i++){
   if((dist((float)a.myCenterX,(float)a.myCenterY,(float)b.get(i).myCenterX,(float)b.get(i).myCenterY)<20)){
     b.remove(i);
     //b.add(new Asteroids());
   }
  }
 
  }
 public void keyPressed(){
   if(key=='h'){
     a.hyperspace(); 
   }
   if(key=='d'){
    a.dir(5); 
   }
   if(key=='a'){
    a.dir(-5); 
   }
   if(key=='w'){
    a.speed(1); 
   }
   if(key==' '){
    c.add(new Bullets(a));
   }
 }
