void setup(){
size(800,600);
}
Clock clock= new Clock();
void draw(){
background(0);
//Progress bar that gets increase each second
  float w = map(second(), 0, 59, 0, width);
  stroke(0,255,0); 
  fill(0,255,0);
  rect(0, height-5, w, 30);//Drawing progress bar
  clock.render();//call  render
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