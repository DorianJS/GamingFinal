class Foe{
  float fx;
  float fy;
  float fxv;
  float fyv; 
  PImage FImage; 
  Foe(){
   FImage= loadImage("alien1.png");
fyv = 5;

    
  }
void draw() {
  fy = fy + fyv;
fx =fx + fxv;
 image(FImage, fx, fy);

}





}
