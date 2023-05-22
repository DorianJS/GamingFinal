class Foe {
  float x, y;
  float size;
  float speed;

  PImage FImage;
  Foe( float startX, float startY, float FoeSize, float FoeSpeed) {



    x = startX;
    y = startY;
    size = FoeSize;
    speed = FoeSpeed;
    FImage= loadImage("alien1.png");
  }



  void update() {

    y+=speed;

    if (y > height) {
      reset();
    }
  }

  void display() {
 
    image(FImage, x, y);


    if (y >= 550) {
      y = random(10, 50);
      x = random(10, 750);
    }
  }

  void reset() {

    x = random(width - size);
    y = -size;
  }
}
