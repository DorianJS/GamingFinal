class HealthBar {
  float hbx;
  float hby;
  int bg;
  int hbs;
  HealthBar(float hbx, float hby,  int hbs) {
    this.hbx = hbx;
    this.hby = hby;
    this.hbs = hbs;

    
    hbs = 250;
    hbx = 30;
    hby = 30;
  }

  void draw() {

    fill(#FFFFFF);
    rect(hbx, hby, 250, 50);
    fill(0, 100, 1);
    rect(hbx, hby, hbs, 50);
  }
}
