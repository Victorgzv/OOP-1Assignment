class Target{



Target(){


}

void render(){
  textSize(10);
if(mouseX>border && mouseX< width-border && mouseY<height-border && mouseY>border){
stroke(255,0,0);

fill(255);
String coord=mouseX+","+mouseY;
text(coord, mouseX+8 , mouseY+30 );
noFill();
beginShape();
vertex(20+mouseX, 50+mouseY);
vertex(50+mouseX, 50+mouseY);
vertex(50+mouseX, 10+mouseY);
endShape();

beginShape();
vertex(-20+mouseX, -50+mouseY );
vertex(-50+mouseX, -50+mouseY);
vertex(-50+mouseX, -10+mouseY);
endShape();

beginShape();
vertex(mouseX+20, mouseY-50 );
vertex(mouseX+50, mouseY-50 );
vertex(mouseX+50, mouseY-10 );
endShape();

beginShape();
vertex(mouseX-20, mouseY+50 );
vertex(mouseX-50, mouseY+50 );
vertex(mouseX-50, mouseY+10 );
endShape();


if (mousePressed == true) {
    fill(255,0,0);
  } else {
    noFill();
  }
 rect(mouseX-15,mouseY-15,30,30);
}

}

}