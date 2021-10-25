//https://www.youtube.com/watch?v=hsAiIytWf-I
PImage wheel;
PImage bar;
PImage Outside;
PImage anchor;

float angle=0;                                            //angle when its at the limit for the wheel
float angleY=0;                                           //angle for wheel
float speed=0;                                            //speed to move the background, fish up and down when moving wheel
int a=1040;                                               //for rotation
int b=575;                                                //for rotation
PFont Depth;                                              //set the font
float anchorH=70;                                         // anchor height
float DDepth=0;                                           // the value of the depth

void DepthControl(){                  
  fill(255,0,0);                      
  text("Depth",910,50);                                    // the text "depth" at this location
  text(DDepth,1010,50);                                    // show the value of  the depth
  
  image(bar,1075,60);
  image(anchor,1150,anchorH);                              //show the anchor  at this location
  
  pushMatrix();                                             // rotation value for the wheel
  translate(a+wheel.width/2,b+wheel.height/2);
  rotate(angle);
  translate(-wheel.width/2,-wheel.height/2);
  image(wheel,0,0);
  popMatrix();
  
 if(mouseX>1115&&mouseX<1190 &&mouseY>570&&mouseY<725){     // detecting which side the mouse is on for wheel rotation
    if(mousePressed==true){
      if(pmouseY-mouseY>0){
        angle=angle-0.5;
        angleY=-0.5; 
        }
      else if(pmouseY-mouseY<0){
        angle=angle+0.5;
        angleY=+0.5;
         }   
        }
  if(mousePressed==false){
      angleY=0;
    }
     if(angleY<0){
       speed=10;
       }
   else if (angleY>0){
   speed=-10;
     }
   else{
    speed=0;
   }
}
if(mouseX>1040&&mouseX<1115 &&mouseY>570&&mouseY<725){     // detecting which side the mouse is on for wheel rotation
    if(mousePressed==true){
      if(pmouseY-mouseY>0){
         angle=angle+0.5;
         angleY=0.5;
         }
    else if(pmouseY-mouseY<0){
         angle=angle-0.5;
         angleY=-0.5;
           }   
     }
      
    if(mousePressed==false){
      angleY=0;
      }
      
    if(angleY<0){
     speed=10;
      }
   else if (angleY>0){
   speed=-10; 
     }
   else{
    speed=0;
   }
}
//image(wheel, 1040,575);
// angle=angle+0.1;

image(Spinrange, 1000,725);                        

  if(BackgroundHeight>-50){
    anchorH=65;
    BackgroundHeight=-50;                                     // set the minimun Backgroundheight value
    angle=random(0,0.5);                                      //random anchor angle when the background height is at this Y value
    image(Outside,0,0);                                       // show the image when out of range
     }
  else if(BackgroundHeight<-1800){                            // set the deepest Backgroundheight value
     anchorH=510;  
     BackgroundHeight=-1800;
     angle=random(-0.5,0);
     image(Outside,0,0);  
    }
  if (mousePressed==true &&angleY>0&&mouseY>570&&mouseY<725){                     // how will the wheel change, anchor change height
   angle=angle+0.1;
   anchorH=anchorH+2.5;
   DDepth=DDepth+6;
    }
  else if (mousePressed==true &&angleY<0&&mouseY>570&&mouseY<725){               // how will the wheel change, anchor change height
    angle=angle-0.1;
    anchorH=anchorH-2.5;
    DDepth=DDepth-6;
     }
    else{
     speed=0; 
     }
  if(DDepth<0){
    DDepth=0;
   }
 else if (DDepth>1050){
   DDepth=1050; 
  }
  
}








 
