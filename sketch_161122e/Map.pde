PShape sMap;
class Map{
float xPos,yPos, w,h;

Map(float xPos, float yPos, float w, float h){
 this.xPos=xPos;
 this.yPos=yPos;
 this.w=w;
 this.h=h;
}
void loadMap(){
  sMap = loadShape("world-map.svg");  //load svg file
  
  shape(sMap, xPos,yPos, w,h );
   
}

}