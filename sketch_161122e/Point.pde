class Point
{
  String country;
  String capital;
  float posX,posY;
  PVector pos;
  PVector screenPos;
  
  Point(TableRow row)
  {
    country = row.getString("CountryName");
    capital = row.getString("CapitalName");
    pos = new PVector(row.getFloat("CapitalLongitude",row.getFloat("CapitalLatitude")));
    screenPos = new PVector(
    map(pos.x, -180, 180, border, width - border)
    , map(pos.y, 90, -90, border, height - border)
    );
  }
  
 
  
}