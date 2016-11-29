PImage backgroundMap;
float mapScreenWidth,mapScreenHeight;  // Dimension of map in pixels.
float border=120;
Clock clock= new Clock();
Arrow arrow =new Arrow(50,1);
Circle circle1= new Circle(60,160,100);
LifeLine line= new LifeLine(border,180);
//Button btn1=new Button(50,500,1,"x");
Target target = new Target();
Wave wave= new Wave(60,250);
ArrayList<Point> points = new ArrayList<Point>(); 

void setup(){
fullScreen();
smooth();
backgroundMap   = loadImage("w4.jpg");
loadMapPoints();
mapScreenWidth  = width-(border*2);
mapScreenHeight = height-(border*2);
 
}
int selected = -1;
void mousePressed()
{
  for(int i = 0 ; i < points.size() ; i ++)
  {
    Point point = points.get(i);
    
    if (dist(mouseX, mouseY, point.screenPos.x, point.screenPos.y)<20)
    {
        selected = i;
    }
  }  
}    
void draw(){
background(0);

drawGrid();
drawPoints();
if (selected != -1 )
  {
    Point point1 = points.get(selected);
    stroke(255);
     println(selected);
    text(point1.capital, border, height - 25);
  }
  
clock.render();//call  render
arrow.display();
arrow.move();
circle1.update();
circle1.render();
line.update();
line.render();
//btn1.render(1);
target.render();
wave.render();




 }


void loadMapPoints()
{
  Table table = loadTable("country-capitals.csv", "header");
  for(TableRow row:table.rows())
  {
    Point point = new Point(row);    
    points.add(point);
  }
}
void drawPoints(){
   for(Point point:points)
  {
    float x = point.screenPos.x;
    float y = point.screenPos.y;  
    stroke(255, 255, 0);
    line(x-2, y, x+2, y);
    line(x, y - 2, x, y + 2);    
    stroke(255, 0, 0);  
    noFill();
    ellipse(x, y, 20,20);
    
  
    
   
    
  }  



}

void drawGrid(){

  fill(#5AA5F2);
  rect(border,border,width-(border*2),height-(border*2));
  //worldmap.loadMap();
    image(backgroundMap,border,border,mapScreenWidth,mapScreenHeight);
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