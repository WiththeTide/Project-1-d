PImage BG1,F1,F2,F1R;

float yF,yF1;
float x=1150;
float y=-50;


void setup(){
  frameRate(120);
  size( 1200,900,P2D);
  
  BG1=loadImage("Background.png");
  BG1.resize(1200,900);
  
  F1=loadImage("f.png");
  F1.resize(200,100);
  

  
  F1R=loadImage("fR.png");
  F1R.resize(200,100);
  
  F2=loadImage("p1.png");  
  F2.resize(50,50);
  
  
  yF=random(0,850);
  yF1=random(0,850);
  
}

void draw(){
  
  background(BG1);
  
  image(F2,x--, yF);  //Fish left to right
  if(x==-100){
    x=1150;
    yF=random(0,900);
    image(F2,x--, yF);
}

image(F1R,y++,yF1);   //Fish right to left
  if(y==1200){
    y=-50;
    yF1=random(0,900);
    image(F1R,y++, yF1);
  }
  


}
