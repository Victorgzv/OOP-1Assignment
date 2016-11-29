ArrayList<LifeLine> lines = new ArrayList();
class LifeLine{
  float x, y,magnitude;
  LifeLine(float x, float y,float magnitude) {
    this.x = x;
    this.y = y;
    this.magnitude= magnitude;
  }


void render() {
  noFill();
  stroke(255,0,0);
  beginShape();
  for (int i=0;i<lines.size();i++) {
    LifeLine P = (LifeLine)lines.get(i);
    vertex(P.x, P.y);
    if (P.x>width-(border))lines.remove(i);
    P.x+=3;
  }
  endShape();
}
void update() {
  float t = random(y-(magnitude/4), y);
  LifeLine P = new LifeLine(x,t,magnitude);
  lines.add(P);
}



}