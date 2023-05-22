float x, y;
float speed;
float size;
boolean active;

class Bullet {


  Bullet(float px, float py, float bulletsize, float bulletspeed) {
    x = px;
    y=py;
    size =bulletsize;
    speed = bulletspeed;
    active = false;
  }
  void update() {
    if (active) {
      y-=speed;
      if (y < 0) {
        active = false;
      }
    }
  }

  void display() {
    if (active) {
      fill(0, 100, 0);
      ellipse(x, y, size, size);
    }
  }
  boolean hits(Foe f) {
    if (active) {
      float distance = dist(x, y, f.x, f.y);
    return distance < f.size/2;
    }
    return false;
  }
  void reset() {
    active = false;
  }
  boolean isActive() {
  return active;
  }

boolean isOffscreen(){
  if(active){
   x=px;
   y=py;
speed = 0;  
} return false;
  
  
  
}

}  //<>//
