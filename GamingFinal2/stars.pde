

float d;

class Star {



  Star(float sx, float sy, float sd) {

    x = sx;
    y= sy;
    d= sd;

    sx = random(1, 800);
    sy = random(1, 600);
    sd= random(5, 25);
  }
  void draw() {
    fill(#990000);
    ellipse(100, 100, 10, 10);
  }
}
