class Earthquake{
 float posX, posY;
  float size, store_size;
  float theta=0;

Earthquake(float x, float y, float sz) {
  posX = x;
  posY = y;
  size = sz;
  store_size = _sz;
}
void display() {
  
    pushMatrix();
    translate(x, y);
    ellipse(0, 0, sz, sz);
    popMatrix();
    sz +=.8;

    if (sz>100) {
      kill = true;
    }
  }
}