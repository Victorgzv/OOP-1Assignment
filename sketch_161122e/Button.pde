class Button{
 float xPos;
 float yPos;
 color c;
 float widthB;
 float heightB;
 int pantallaActual;
 PFont font;
 String text;

Button(float y, int inici, String t){
    xPos = 50;
    yPos = y;
    c = color(255, 0, 0);
    widthB = 30;
    heightB = 30;
    pantallaActual = inici;
    //font = createFont("Arial", 12);
    //textFont(font);
    text = t;
}
  void render(int borde) {
   
    stroke(borde);
    fill(c, 162, 123);
    rect(xPos, yPos, widthB, heightB);
    fill(255);
    text(text, xPos + 10, yPos + 20);
  }

}