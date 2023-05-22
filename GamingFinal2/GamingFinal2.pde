Foe[] f;
int numFoes= 5;
int FoeSize = 30;
float FoeSpeed = 2;
Player p;
Star [] stars;
Bullet [] b;
int playerHealth;
int k;
int numBullets;
boolean isOffscreen;
float bulletsize;
PImage bg;
int bgx;
int bgy;
void setup() {
  size(1000, 900);
  b = new Bullet[15];
  numBullets = 0;

  stars = new Star[50];
  p= new Player(px, py);
  bg = loadImage("Background.jpg");


  f = new Foe[numFoes];
  
}



void draw() {
 push();
  background(0);
    p.draw();

  image(bg, bgx, bgy);
  image(bg, bgx, bgy + bg.height );
  bgy = bgy +1;
  // bullet
 for (int w = 0; w < numFoes; w++) {
    float x = random(width - FoeSize);
    float y = random(height/2);
    f[w] = new Foe(x, y, FoeSize, FoeSpeed);
  }
  for (int k = 0; k < numBullets; k++) {
    b[k].update();
    b[k].display();



  if (b[k].isOffscreen()) {

      removeBullet(k);
      k--;
      if (bgy < -1) {
        bgy = 0;
      }
    }
  }
  //player


  for (int j = 0; j < numFoes; j++) {
    if (b[k].hits(f[j])) {
      b[k].reset();
      f[j].reset();
    }
  }
  for ( int j = 0; j <numFoes; k++) {
    f[j].update();
    f[j].display();
  }
  float distance = dist(px, py, f[k].x, f[k].y);
  if ( distance < 20) {
    playerHealth -= 1;
  }


  fill(0);
  textSize(16);
  textAlign(CENTER);
  text("Health: " + playerHealth, width/2, 30);


  if (playerHealth <= 0) {
    textSize(32);
    text("GameOver", width/2, height/2);
    noLoop();
  }
pop();
}
// end of void draw
void shootBullet() {
  for (int k = 0; k < numBullets ; k++) {
    if (!b[k].isActive()) {
      //b[k].shoot();
      break;
    }
  }
}







void addBullet(float px, float py) {
  if (numBullets < b.length) {
    b[numBullets]  = new Bullet( px, py, bulletsize,5);

    numBullets++;
  }
}
void removeBullet(int index) {
  numBullets--;
  b[index] = b[numBullets];
  b[numBullets] = null;
}


//foes



//Planets





// healthbar









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
  if (key ==' ') {
    addBullet(px, py);
  }
}
