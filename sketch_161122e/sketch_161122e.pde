void setup(){
fullScreen();
smooth();
}
Clock clock= new Clock();
Arrow arrow =new Arrow(50,5);
Circle circle1= new Circle(100);
float border=120;
void draw(){
background(0);
drawGrid();
clock.render();//call  render
arrow.display();
arrow.move();
}

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
 
  
 
  
 
}