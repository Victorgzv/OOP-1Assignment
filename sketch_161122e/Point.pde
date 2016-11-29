class Point
{
  String country;
  String capital;
  String status;
  float longitude,latitude,magnitude;
  PVector pos;
  PVector screenPos;
  
  Point(TableRow row)
  {
    country = row.getString("CountryName");
    capital = row.getString("CapitalName");
    longitude=row.getFloat("CapitalLongitude");
    latitude=row.getFloat("CapitalLatitude");
    magnitude=row.getFloat("Magnitude");
    status= row.getString("Status");
    pos = new PVector(longitude,latitude);
    screenPos = new PVector(
    map(pos.x, -180, 180, border, width - border)
    , map(pos.y, 90, -90, border, height - border)
    );
  }
  
 
  
}