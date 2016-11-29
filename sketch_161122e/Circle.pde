class Circle{
float x,y;
float size;
float theta=0;
  Circle( float x,float y ,float size){
   this.x=x;
   this.y=y;
   this.size=size;
  }
  void update(){
     theta++;
  }
  void render(){
      noStroke();
      fill(235);
      ellipse(x,y,size,size);
      fill(#F0DA11);
      arc(x,y,size*4/5,size*4/5, 0+radians(theta+x), 3*QUARTER_PI+radians(theta+x));
      fill(235);
      arc(x,y,size*3/5,size*3/5, 0-1+radians(theta+x), 3*QUARTER_PI+1+radians(theta+x));
      
      fill(50);
      arc(x,y,size*3/5,size*3/5, 4*QUARTER_PI+radians(theta*3+y), 7*QUARTER_PI+radians(theta*3+y));
      fill(235);
      arc(x,y,size*2/5,size*2/5, 4*QUARTER_PI-1+radians(theta*3+y), 7*QUARTER_PI+1+radians(theta*3+y));
    
      fill(#F0DA11);
      arc(x,y,size*2/5,size*2/5, 4*QUARTER_PI+radians(theta*9), 7*QUARTER_PI+radians(theta*9));
      fill(235);
      arc(x,y,size*1/5,size*1/5, 4*QUARTER_PI-1+radians(theta*9), 7*QUARTER_PI+1+radians(theta*9));
      
      fill(50);
      ellipse(x,y,size/5,size/5);
 
  
  }
  
}