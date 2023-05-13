Foe  [] f = new Foe[1];
Player p;
Star [] stars;
HealthBar h;
// points


float sx;
float sy;
float sd;
float hbs;
float fy;
float fx;
PImage bg;
int bgx, bgy;
void setup() {
  size(800, 600);
  f = new Foe[5];
  stars = new Star[50];
  for (int i = 0; i< stars.length; i++) {
    stars[i] = new Star(random(10, 750), random(10, 600), random(10, 25));
  }
  //foe


  for (int q= 0; q < f.length; q++) {
    f[q] = new Foe(fx, fy, random(-5, 5), random(5, 15));


    for (int r = 0; r < f.length; r++) {

      if (dist(Player.px, Player.py, Foe[q].fx, Foe[q].fy) < 40) {
        hbs -= 50 ;
      }
    }



    h = new HealthBar(50, 50, hbs);
    p= new Player(px, py);
    px= 400;
    py = 500;
    bg = loadImage("Background.jpg");
  }
}


void draw() {
  background(0);
  image(bg, bgx, bgy);
  image(bg, bgx, bgy + bg.height );
  bgy = bgy +1;
  if (bgy < -1) {
    bgy = 0;
  }

  //stars
  for (int i = 0; i< stars.length; i++) {
    stars[i].draw();
  }



  //bullet




  //foes
  for (int q = 0; q < f.length; q++) {
    f[q].draw();
  }

  if (dist(fx, fy, px, py)<=400) {
    hbs -=50;
  }

  //Planets





  // healthbar

  h.draw();

  p.draw();
}




void keyPressed() {

  if (key == 'w') {

    py -= 15;
  }
  if (key == 's') {

    py += 15;
  }
  if (key == 'a') {

    px -= 15;
  }

  if (key =='d') {
    px += 15;
  }
}
