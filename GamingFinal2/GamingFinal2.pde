Foe  [] f = new Foe[1];
Player p;
Star [] stars; 
HealthBar h; 


float px;
float py;
float fx;
PImage bg;
int bgx, bgy;
void setup() {
  size(800, 600);
f = new Foe[5]; 
stars = new Star[50]; 
for(int i = 0; i< stars.length; i++){
  stars[i] = new Star();
}
  //foe 
  for(int q= 0; q < f.length; q++){
   f[q] = new Foe();  
  }
  
  h = new HealthBar(); 
  p= new Player();
  px= 100;
  py = 100;
  bg = loadImage("Background.jpg");
}



void draw() {
background(0);
 image(bg, bgx, bgy);
  image(bg, bgx, bgy + bg.height );
  bgy = bgy +1;
  if (bgy < -1){
    bgy = 0;
  }
 
 //stars
 for(int i = 0; i< stars.length; i++){
stars[i].display(); 
 }
 
 
 
 //bullet
 
 
 
 
 //foes
 for(int q = 0; q < f.length; q++){
   f[q].draw(); 
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
