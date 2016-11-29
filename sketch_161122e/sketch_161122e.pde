PFont mono;
PImage backgroundMap,points_img;
float mapScreenWidth,mapScreenHeight;  // Dimension of map in pixels.
float border=120;

Button btn1;
Button btn2, increase, decrease;
Clock clock= new Clock();
Arrow arrow =new Arrow(50,1);
Circle circle1= new Circle(60,160,100);
LifeLine line= new LifeLine(border,180);

Target target = new Target();
Wave wave= new Wave(60,250,0.1);
ArrayList<Point> points = new ArrayList<Point>(); 
ArrayList<Earthquake> earthquakes = new ArrayList<Earthquake>(); 
void setup(){

fullScreen();
smooth();
backgroundMap   = loadImage("w4.jpg");
points_img   = loadImage("nuclear.png");
loadMapPoints();
mapScreenWidth  = width-(border*2);
mapScreenHeight = height-(border*2);
mono = createFont("lucida-console.ttf",10);
// create the button object
 btn1=new Button("Nuclear Warning",120,100,30);
 btn2=new Button("Eartquake Warning",160,105,30);
 increase=new Button("+",180,10,30);
 decrease=new Button("-",200,10,30);
}
int selected = -1;
int selected2 = -1;
boolean opt1,opt2;
void mousePressed(){
  for(int i = 0 ; i < points.size() ; i ++){
    Point point = points.get(i);
    
    if (dist(mouseX, mouseY, point.screenPos.x, point.screenPos.y)<20)
    {
        selected = i;
    }
  }
   for(int i = 0 ; i < earthquakes.size() ; i ++){
    Earthquake eqs = earthquakes.get(i);
    
    if (dist(mouseX, mouseY, eqs.posX, eqs.posY)<20)
    {
        selected2 = i;
    }
  }
  if (btn1.MouseIsOver()) {
   opt1=true;
   opt2=false; 
  
  }
  if (btn2.MouseIsOver()) {
   opt2=true; 
   opt1=false; 
  }
}  

void draw(){
background(0);

textFont(mono);
text("Nuclear Info.", 10,500);
text("Eartquake Info.", 10,620);
drawGrid();
if(opt1){
  drawPoints();
}
if(opt2){
 drawEQ();
}


btn1.render();
btn2.render();
increase.render();
decrease.render();
clock.render();//call  render
arrow.display();
arrow.move();
circle1.update();
circle1.render();
line.update();
line.render();
target.render();
displayNuclearCoordinates();
displayEQCoordinates();
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
    if(row.getString("Status").equals("Nuclear")){
     
      points.add(point);
    }else if(row.getString("Status").equals("EQ")){
    
    float x = point.screenPos.x;
    float y = point.screenPos.y; 
    String name= point.country;
    Float magnitude= point.magnitude;
    float eq_size=0;
    color c=color(0,255,0);
    String description="";
    //Richter magnutude scale
    if(magnitude>0 && magnitude <=1.0){
     eq_size=5;
      c=color(0,0,255);
      description="No risk";
    }else if(magnitude>=1.0 && magnitude <=1.9){
     eq_size=10;
      description="Micro";
    }else if(magnitude>=2.0 && magnitude <=3.9){
     eq_size=20;
     description="Minor";
    }else if(magnitude>=4.0 && magnitude <=4.9){
     eq_size=30;
     description="Light";
    }else if(magnitude>=5.0 && magnitude <=5.9){
     eq_size=40;
      description="Moderate";
    }else if(magnitude>=6.0 && magnitude <=6.9){
     eq_size=50;
      c=color(#FCF21F);
      description="Strong";
    }else if(magnitude>=7.0 && magnitude <=7.9){
      eq_size=60;
       description="Major";
    }else if(magnitude>=8.0 && magnitude <=8.9){
      eq_size=70;
       c=color(255,0,0);
       description="Great";
    }else if(magnitude>=9.0){
       eq_size=80;
       description="Great";
       c=color(255,0,0);
    }
    
     Earthquake eq= new Earthquake (x,y,eq_size,0.9,name,c,description,magnitude);
     earthquakes.add(eq);
     //println(point.country +" "+eq.posX+" "+eq.posY);
     
    }
  }
}

void displayNuclearCoordinates(){
  stroke(255);
  textSize(12);
  textFont(mono);

if (selected != -1  )
  {
    Point point1 = points.get(selected);
  
    text(point1.country, 10,520);
    text(point1.capital, 10,540);
    text(point1.longitude+"º",10,560);
    text(point1.latitude+"º", 10,580);
    }

  }
void displayEQCoordinates(){
  stroke(255);
  textSize(12);
  textFont(mono);
 
if (selected2 != -1  )
  {
    Earthquake eqs = earthquakes.get(selected2);
  
    text(eqs.name, 10,640);
    text("Magnitude: "+eqs.magnitude, 10,660);
    text("Risk: "+ eqs.description, 10,680);
    wave.magnitude=eqs.magnitude;    
    }  
  }

void drawGrid(){
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
  
    imageMode(CENTER);
    image(points_img,x,y,25,25);
    
  }
}
void drawEQ(){
  for(Earthquake eq:earthquakes)
  {
     stroke(#00A511);
    eq.render();
  }
  
  
}