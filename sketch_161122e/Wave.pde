class Wave{
int x,y;

Wave(int x){
this.x=x;


}
void render(){
translate(x,200);
  float theta = TWO_PI*frameCount * .002;
  for (int y = -500; y < 500; y += 5) {
    float x = sin(theta+y*5)*40;
    line(-x, y, x, y);
    line(-x, y, 0, y);
    ellipse(x*.5, y, 2.5, 2.5);
  }
}
}