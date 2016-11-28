class Point
{
  String displayName;
  float posX,posY;
  float magnitude;
  boolean habitable;
  PVector pos;
  PVector screenPos;
  
  Point(float lati, float longi)
  {
    this.posX=longi;
    this.posY=lati;
   
    pos = new PVector(longi,lati);
   screenPos = new PVector(
    map(pos.x, -180, 180, border, width - border)
    , map(pos.y, 90, -90, border, height - border)
    );
  }
  
 
  
}