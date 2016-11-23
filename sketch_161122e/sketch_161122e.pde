void setup(){
fullScreen();
}
Clock clock= new Clock();
float border=120;
void draw(){
background(0);
drawGrid();
//Progress bar that gets increase each second
  float w = map(second(), 0, 59, 0, width-200);
  stroke(0,255,0); 
  fill(0,255,0);
  rect(200,60, w, 20);//Drawing progress bar
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
float xPos=50;
void drawGrid()
{
  fill(255, 0, 255);
  stroke(255);
  textAlign(CENTER, CENTER);
   for(float x = 0 ; x <=30; x ++)
  {
    float lx = map(x, 0, 30, border, width - border);
    line(lx, border, lx, height - border);
    //text((int) x, lx, 10);
  }
  
  for(float y = 0 ; y <=15; y ++)
  {
    float ly = map(y, 0, 15, border, height - border);
    line(border, ly, width - border, ly);
    //text((int) y, 10, ly);
  }
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
  //cone
 
    fill(255);
    triangle(xPos+50, height-30, xPos+150, height-30, xPos+100, height-60);
  if(xPos<=width-(border*2)){
    xPos+=5;
  }
  else if(xPos>border) {
    xPos-=5;
  }
  
}