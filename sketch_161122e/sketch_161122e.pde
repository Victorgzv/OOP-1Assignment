PFont mono;
PImage backgroundMap,points_img;
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
points_img   = loadImage("nuclear.png");
loadMapPoints();
mapScreenWidth  = width-(border*2);
mapScreenHeight = height-(border*2);
mono = createFont("lucida-console.ttf",10);
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
float zoom=1;
void draw(){
background(0);
drawGrid();
drawPoints();
displayCoordinates();

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
void keyPressed() {
  if (key == CODED) {
   /* if (keyCode == UP) {
      zoom += .03;
    }else if (keyCode == DOWN) {
      zoom -= .03;
    } */
  }
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

void displayCoordinates(){
   stroke(#00A511);
  textSize(12);
  textFont(mono);
 
if (selected != -1 )
  {
    Point point1 = points.get(selected);
    
    text(point1.country, 10,500);
    text(point1.capital, 10,520);
    text(point1.longitude+"º",10,540);
    text(point1.latitude+"º", 10,560);
  }
}
void drawGrid(){

  
  rect(border,border,width-(border*2),height-(border*2));
      imageMode(CORNER);
  image(backgroundMap,border,border,mapScreenWidth,mapScreenHeight);
  stroke(#3677B7);
 
   for(float x = 0 ; x <=360; x +=10)
  {
    float lx = map(x, 0, 360, border, width - border);
    line(lx, border, lx, height - border);
   
  }
  
  for(float y = 0 ; y <=180; y +=10)
  {
    float ly = map(y, 0, 180, border, height - border);
    line(border, ly, width - border, ly); 
  }
}
void drawPoints(){
   for(Point point:points)
  {
    float x = point.screenPos.x;
    float y = point.screenPos.y; 
    Earthquake e1= new Earthquake(x,y,50,0.5);
    stroke(#00A511);
    e1.render();
    imageMode(CENTER);
    image(points_img,x,y,25,25);
    
  }  
}