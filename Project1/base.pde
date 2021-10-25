// size(1200,800); 


void base(){                                   //the curve base 
  
fill(136, 228, 235);
if (BackgroundHeight<-500){
fill(40,130,240);
}
if (BackgroundHeight<-1150){
fill(241,241,241); 
}

if(BackgroundHeight<-1600){
 fill(241,241,241); 
}

strokeWeight(2);
beginShape();
curveVertex(0,800);
curveVertex(0,800);

curveVertex(0,566); 

curveVertex(47,566); 
curveVertex(188,632); 
curveVertex(233,661);
curveVertex(299,683);
curveVertex(380,688);
curveVertex(415,686);
curveVertex(458,679);
curveVertex(504,666);
curveVertex(590,635);
curveVertex(663,626);
curveVertex(736,624);
curveVertex(804,639);
curveVertex(862,661);
curveVertex(922,682);
curveVertex(974,692);
curveVertex(1050,691);

curveVertex(1168,635);

curveVertex(1200,612);

curveVertex(1200,800);
curveVertex(1200,800);

endShape();



}
