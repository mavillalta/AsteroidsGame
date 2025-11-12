Spaceship a;
 Star[] s= new Star[200];
void setup(){
 size(500,500); 
 a=new Spaceship();
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
 }
