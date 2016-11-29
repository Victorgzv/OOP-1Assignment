class Earthquake{
float posX,posY,diameter;
float angle,speedV;
String name,description;
color c;
float magnitude;
Earthquake(float x, float y, float diameter,float speedV,String name,color c, String description,float magnitude) {
posX = x;
posY = y;
angle=0;
this.name=name;
this.speedV=speedV;
this.diameter= diameter;
this.magnitude= magnitude;
this.description=description;
this.c=c;
}
void render(){
  stroke(c);
  float d1 = 30 + (sin(angle + PI/3) * diameter/3) + diameter/3;
  float d2 = 20 + (sin(angle + PI/2) * diameter/2) + diameter/2;
  float d3 = 5 + (sin(angle + PI/2) * diameter/2) + diameter/2;
  noFill();
   ellipse(posX,posY, d1, d1);
  ellipse(posX,posY, d2, d2);
  ellipse(posX,posY, d3, d3);
  angle += speedV;
}

}