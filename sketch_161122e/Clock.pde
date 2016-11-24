class Clock{
//fields
int  s;
int  m;
int  h;
//default constructor
Clock(){

}
void render() {
int  s = second();
int  m = minute();
int  h = hour();

  String time = h + ":" + m + ":" + s;
  textAlign(LEFT, TOP);//Positioning text in the left top corner
  textSize(30);
  fill(0, 255, 0);
  text(time, 50,50);
//Progress bar that gets increase each second
  float w = map(second(), 0, 59, 0, width-200);
  stroke(0,255,0); 
  fill(0,255,0);
  rect(200,60, w, 20);//Drawing progress bar
   stroke(0,255,0); 
   line(0,60,20,60);
   line(0,80,20,80);
   line(20,60,50,40);
   line(20,80,50,100);
   line(50,40,180,40);
   line(50,100,180,100);
   line(180,40,200,60);
   line(180,100,200,80);
   line(200,60,width,60);
   line(200,80,width,80);
}
}