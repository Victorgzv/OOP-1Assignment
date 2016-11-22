void setup(){
fullScreen();
}
void draw(){
background(0);
//Progress bar that gets increase each second
  float w = map(second(), 0, 59, 0, width);
  stroke(0,255,0); 
  fill(0,255,0);
  rect(0, height-5, w, 30);//Drawing progress bar
}