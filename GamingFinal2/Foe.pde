class Foe {
  float x;
  float y;
  float xv;
  float yv;
  PImage FImage;
  Foe(float fx, float fy, float fxv, float fyv) {
    this.x = fx;
    this.y =fy;
    this.xv = fxv;
    this.yv = fyv;





    FImage= loadImage("alien1.png");
    yv = random(3, 9);
    x = random(10, 750);
    y = 10;
  }
  void draw() {
    y = y + yv;
    x =x + xv;
    image(FImage, x, y);
    if (dist(fx, fy, px, py)<=400) {
      hbs -=50;
    }

    if (y >= 550) {
      y = random(10, 50);
      x = random(10, 750);
    }
  }
}
