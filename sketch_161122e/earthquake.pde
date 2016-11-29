class Earthquake{
float posX,posY,diameter;
float angle,speed;

Earthquake(float x, float y, float diameter,float speed) {
posX = x;
posY = y;
angle=0;
this.speed=speed;
this.diameter= diameter;
}
void render(){
  float d1 = 30 + (sin(angle + PI/3) * diameter/3) + diameter/3;
  float d2 = 20 + (sin(angle + PI/2) * diameter/2) + diameter/2;
  float d3 = 5 + (sin(angle + PI/2) * diameter/2) + diameter/2;
  
   ellipse(posX,posY, d1, d1);
  ellipse(posX,posY, d2, d2);
  ellipse(posX,posY, d3, d3);
  angle += speed;
}
void update(){

 
}
}