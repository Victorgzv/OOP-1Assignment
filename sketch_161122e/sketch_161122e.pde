void setup(){
fullScreen();
smooth();
}
float border=120;
Clock clock= new Clock();
Arrow arrow =new Arrow(50,5);
Circle circle1= new Circle(60,160,100);
LifeLine line= new LifeLine(border,180);


void draw(){
background(0);
drawGrid();
clock.render();//call  render
arrow.display();
arrow.move();
circle1.update();
circle1.render();
line.update();
line.render();
}

void drawGrid()
{
  fill(0);
   rect(border,border,width-(border*2),height-(border*2));
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