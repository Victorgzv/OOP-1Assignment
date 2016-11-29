class Box{
float posX,posY;
Box(float posX, float posY){
this.posX=posX;
this.posY=posY;
}

void render(){




pushMatrix();
translate(posX, posY, 0);
rotateX(PI/2);
float mx=map(mouseX,0,width,0,360);
rotateZ(radians(mx));
float my=map(mouseY,0,height,0,180);
rotateX(radians(my));
stroke(0,255,0);
lights();

box(100);
popMatrix();

}
}