class Bullet {
  float x;
  float y;
  float size;
  float speed;
  
  Bullet(float x, float y, float size, float speed) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
  }
  
  void update() {
    y -= speed;  // Move bullet up
    
    // Check if bullet is out of the screen
    if (y < 0) {
      isBulletActive = false;
    }
  }
  
  void display() {
    fill(255, 0, 0);
    ellipse(x, y, size, size);
  }
  
  boolean hits(Alien alien) {
    float d = dist(x, y, alien.x, alien.y);
    return d < (size + alien.size) / 2;
  }
}

class Star {
  float x;
  float y;
  float size;
  
  Star(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  void update() {
    // Scroll the stars vertically
    y += scrollSpeed;
    
    // Check if star is out of the screen
    if (y > height) {
      y = 0;  // Reset star position to the top
    }
  }
  
  void display() {
    fill(255);
    ellipse(x, y, size, size);
  }
}
