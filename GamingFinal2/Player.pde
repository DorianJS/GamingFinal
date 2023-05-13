PImage Dog;
float px;
float py;
class Player {

  Player(float px, float py) {
    Dog = loadImage("rocket.png");
    this.x  =px;
    this.y = py;
  }



  void draw() {
    image(Dog, px, py);
    for (int r = 0; r < f.length; r++) {

      if (dist(Player.px, Player.py, Foe[q].fx, Foe[q].fy) < 40) {
        hbs -= 50 ;
      }
    }
  }
