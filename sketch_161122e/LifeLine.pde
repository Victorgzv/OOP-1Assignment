ArrayList<LifeLine> lines = new ArrayList();
class LifeLine{
  float x, y;
  LifeLine(float x, float y) {
    this.x = x;
    this.y = y;
  }


void render() {
  noFill();
  stroke(255);
  beginShape();
  for (int i=0;i<lines.size();i++) {
    LifeLine P = (LifeLine)lines.get(i);
    vertex(P.x, P.y);
    if (P.x<0)lines.remove(i);
    P.x--;
  }
  endShape();
}
void update() {
  float t = random(0, 250);
  LifeLine P = new LifeLine(x, t );
  lines.add(P);
}



}