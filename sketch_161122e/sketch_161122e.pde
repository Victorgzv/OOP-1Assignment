void setup(){
fullScreen();
smooth();

}
float border=120;
Clock clock= new Clock();
Arrow arrow =new Arrow(50,1);
Circle circle1= new Circle(60,160,100);
LifeLine line= new LifeLine(border,180);
Map worldmap= new Map( border,border, 1200,550);
Button btn1=new Button(50,500,1,"x");
Target target = new Target();
Wave wave= new Wave((int)(width+100));
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
btn1.render(1);
target.render();
wave.render();


}

void drawGrid
(){
  fill(#5AA5F2);
  rect(border,border,width-(border*2),height-(border*2));
   worldmap.loadMap();
  stroke(#3677B7);
  textAlign(CENTER, CENTER);
   for(float x = 0 ; x <=30; x ++)
  {
    float lx = map(x, 0, 30, border, width - border);
    line(lx, border, lx, height - border);
   
  }
  
  for(float y = 0 ; y <=15; y ++)
  {
    float ly = map(y, 0, 15, border, height - border);
    line(border, ly, width - border, ly);
   
 




  
 
  
  }
}