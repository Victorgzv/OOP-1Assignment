class Wave{
float posX,posY;

Wave(float posX, float posY){
this.posX=posX;
this.posY=posY;


}
void render(){
translate(posX,posY);
stroke(255);
  float theta = TWO_PI*frameCount * .002;
  for (int y = 0; y < 200; y += 5) {
    float x = sin(theta+y*5)*40;
    line(-x, y, x, y);
    line(-x, y, 0, y);
    ellipse(x*.5, y, 2.5, 2.5);
  }
}
}