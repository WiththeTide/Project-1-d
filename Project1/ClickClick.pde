void click(){
  image(spinme,1000,675,260,140);                                 //images location
  image(hold,650,660,260,160);                                    //images location
  image(Sleep,750,650);                                           //images location
  image(foodtext,400,605);                                        //images location
  image(nofoodtext,200,605);                                      //images location
  image(guide,50,650);                                            //images location
  
  if(mouseX>53&&mouseX<145 &&mouseY>650&&mouseY<750){             //when checking instruction
    if(mousePressed==true){
      instruction=true;
     }
   }
  
  if(instruction==true){                                           // pop up images for checking instruction
     image(species,400,200);
    if(keyPressed) {
      if (key == 'Q'||key=='q') {
        instruction=false;
       }
    if(key==' '){
      image(instruction2,100,200);
      image(instruction3,650,200);
     }
    }
  }
  
  if(mouseX>800&&mouseX<900 &&mouseY>725&&mouseY<770){                          //when fish is sleeping
    if(mousePressed==true){
      image(zzz,700,500,400,400);
      image(lazy,700,550);
       freeze=true;
       food=false;
       food2=false;   
       food3=false;
     }
    else{
     freeze=false; 
      }
   }
    
   if(mouseX>500&&mouseX<600 &&mouseY>745&&mouseY<775){                           //when food is active
     if(mousePressed==true){ 
      food=true;  
      food2=true;
      food3=true;
       }
    }   
    
   if(food==true&&BackgroundHeight>-1200){  
     foodx=400;                                                         //x value for food in zone 1
     foody=200;                                                         //y value for food in zone 1
     image(foodd,foodx,foody);
   }
   if(food2==true&& BackgroundHeight>-1200){  
     foodx2=400;                                                        //x value for food in zone 2
     foody2=200;                                                        //y value for food in zone 2
     image(foodd2,foodx2,foody2);
   }
        //food reset   
  if(mouseX>310&&mouseX<400 &&mouseY>725&&mouseY<780){                   //when no food is active
    if(mousePressed==true){ 
      food=false; 
      food2=false;
      food3=false;
    }
  }
  if(left==foodx||right==foodx){
    foodx=10000;                                       //make the food out of sight
    }  
  }
