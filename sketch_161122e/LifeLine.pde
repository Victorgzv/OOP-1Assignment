ArrayList<LifeLine> lines = new ArrayList();
class LifeLine{
  float x, y;
  LifeLine(float x, float y) {
    this.x = x;
    this.y = y;
  }


void render() {
  noFill();
  stroke(0,255,0);
  beginShape();
  for (int i=0;i<lines.size();i++) {
    LifeLine P = (LifeLine)lines.get(i);
    vertex(P.x, P.y);
    if (P.x>width-(border))lines.remove(i);
    P.x+=1;
  }
  endShape();
}
void update() {
  float t = random(y-60, y);
  LifeLine P = new LifeLine(x, t );
  lines.add(P);
}



}