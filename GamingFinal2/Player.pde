PImage Dog;
float px;
float py;
class Player {

  Player(float px, float py) {
    Dog = loadImage("rocket.png");
    x  =px;
    y = py;
  }



  void draw() {
    image(Dog, px, py);

     
    }
  }
