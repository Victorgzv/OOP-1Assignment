class Arrow{
float xPos;
float speed;
Arrow(float xPos, float speed){
this.xPos=xPos;
this.speed=speed;

}
void display(){
  line(border, height-80, width-border, height - 80);
    for(int i =0; i < width -(border*2); i += 10)
  {
    float x = border + i;
    line(x,height-100,x,height-80);
    
  }
   for(int i =0; i < width -(border*2); i += 5)
  {
    float x = border + i;
    line(x,height-90,x,height-80);
    
  }
  triangle(xPos+30, height-30, xPos+70, height-30, xPos+50, height-60);
}
  void move(){
     xPos+= speed;
  if(xPos > width-(border*2) || xPos <50 ){
     speed *= -1;
  }
  
  
  
  
  }
}


 

   
   