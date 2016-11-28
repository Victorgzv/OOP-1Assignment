class Point
{
  String country;
  String capital;
  float posX,posY;
  PVector pos;
  PVector screenPos;
  
  Point(TableRow row)
  {
    country = row.getString("Country Name");
    capital = row.getString("Capital Name");
    pos = new PVector(row.getFloat("Latitude"),row.getFloat("Longitude"));
    screenPos = new PVector(
    map(pos.x, -180, 180, border, width - border)
    , map(pos.y, 90, -90, border, height - border)
    );
  }
  
 
  
}