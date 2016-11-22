class Clock{
//fields
int  s;
int  m;
int  h;
//constructor
Clock(){

}
void render() {
int  s = second();
int  m = minute();
int  h = hour();

  String time = h + ":" + m + ":" + s;
  textAlign(LEFT, TOP);
  textSize(50);
  fill(0, 255, 0);
  text(time, 50,50);
}
}