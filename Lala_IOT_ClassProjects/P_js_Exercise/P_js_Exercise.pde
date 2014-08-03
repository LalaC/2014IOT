
float backgroundColor;
float strokeColor;
float strokeWeightValue;
float circleStroke;
float tx1;
float ty1;
float tx2;
float ty2;
float tx3;
float ty3;
int mouseFillx;
int mouseFilly;


void setup () {
  size(600, 600);
  strokeColor = #986403;
  strokeWeightValue= 10;
  backgroundColor = 0;
  circleStroke= 5;
  tx1 = 150;
  ty1 = 180;
  tx2 = 450;
  ty2 = 180;
  tx3 = 300;
  ty3 = 480;
  strokeCap(ROUND);
  strokeJoin(ROUND);
}

void draw() {
  background(backgroundColor);
  
  
  stroke(255);
  strokeWeight(circleStroke);
  noFill();  
  ellipse(300, 300, 550, 550);
   
   
  
  
  
  stroke(strokeColor);
  strokeWeight(strokeWeightValue);
  mouseFillx = map(mouseX, 0, 600, 0, 200);
  mouseFilly = map(mouseY, 0, 600, 0, 200);
  fill(mouseFillx, 0 ,mouseFilly );
  triangle(tx1, ty1, tx2, ty2, tx3, ty3);


  if (mousePressed){
  tx1 = 150;
  ty1 = 450;
  tx2 = 450;
  ty2 = 450;
  tx3 = 300;
  ty3 = 150;
  
  strokeColor = #578166;
  
  }
  
  else {
  tx1 = 150;
  ty1 = 180;
  tx2 = 450;
  ty2 = 180;
  tx3 = 300;
  ty3 = 480;
  
  strokeColor = #986403;
  
  }
}

void mouseDragged(){
  
  cirlceStroke = mouseX/10;
  
  //Ensure that the value for stroke weight is never negative.
  if(cirlceStroke < 0)
    cirlceStroke = 0;
  
   backgroundColor = map(mouseX, 0, 600, 0, 255);
   
}
