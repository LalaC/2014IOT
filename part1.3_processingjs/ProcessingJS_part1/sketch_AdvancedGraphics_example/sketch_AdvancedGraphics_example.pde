/*
 * Copyright (c) 2014 Monash University
 *
 * This sketch draws the Bacteriophage T4 Virus
 * using Processing's graphics drawing shapes
 */

void setup() {
  size(500, 600);
  smooth(4); // add extra smoothing to lines -- this takes more time, but gives better quality
}

void draw() {
  background(255);

  //head
  stroke(0);
  noFill();

  float headCenterX = width/2 ;
  float headCenterY = 100;
  float headSize = 50;
  float angle = TWO_PI/6;

  beginShape();
  for (int i =0; i< 6; i++) {
    float x = headCenterX + headSize*cos(angle/2 + angle*i);
    float y = headCenterY + headSize*sin(angle/2 + angle*i);

    vertex(x, y); // add a new vertex

    //line from center
    strokeWeight(1);
    line(headCenterX, headCenterY, x, y );

    strokeWeight(6);
  }
  endShape(CLOSE);

  //body
  noFill();
  strokeWeight(3);
  float curveHeight  = 5;
  float curveWidth = 5;
  float firstPointX = width/2;
  float secondPointX = width/2;

  beginShape();
  for (int i=0; i < 30; i++) {
    //this draws one unit of the curve, then repeats 10 times.

    float firstPointY = 150 + curveHeight*i;
    float firstControlPointX =  firstPointX + curveWidth - (curveWidth*2)*(i%2);
    float firstControlPointY =  firstPointY  ;

    float secondPointY = 150 + curveHeight*(i+1);
    float secondControlPointX = secondPointX + curveWidth - (curveWidth*2)*(i%2);
    float secondControlPointY = secondPointY;
    vertex(firstPointX, firstPointY); // start point of each curve unit
    bezierVertex( firstControlPointX, firstControlPointY, 
    secondControlPointX, secondControlPointY, secondPointX, secondPointY ); //leftside
  }
  endShape();    

  //bottom
  float bottomX = width/2;
  float bottomY = 300;
  float bottomWidth = 30;
  float bottomHeight = 15;
  float bottomRound = 5;
  rect(bottomX - bottomWidth/2, bottomY, bottomWidth, bottomHeight, bottomRound );

  //leg-left (ll) 
  float ll_firstPointX = width/2 + 15;
  float ll_firstPointY = 307;
  float ll_firstControlX = ll_firstPointX + 50;
  float ll_firstControlY = ll_firstPointY - 50;
  float ll_secondPointX = width/2 + 70;
  float ll_secondPointY = 450;
  float ll_secondControlX = ll_secondPointX + 100;
  float ll_secondControlY = ll_secondPointY + 50;

  curve(ll_firstControlX, ll_firstControlY, ll_firstPointX, ll_firstPointY, ll_secondPointX, 
  ll_secondPointY, ll_secondControlX, ll_secondControlY);

  //leg-right(lr)
  float lr_firstPointX = width/2  - 15;
  float lr_firstPointY = 307;
  float lr_firstControlX = lr_firstPointX - 50;
  float lr_firstControlY = lr_firstPointY - 50;
  float lr_secondPointX = width/2 - 70;
  float lr_secondPointY = 450;
  float lr_secondControlX = lr_secondPointX - 100;
  float lr_secondControlY = lr_secondPointY + 50;

  curve(lr_firstControlX, lr_firstControlY, lr_firstPointX, lr_firstPointY, 
  lr_secondPointX, lr_secondPointY, lr_secondControlX, lr_secondControlY);

  //leg- middle
  line(width/2, 307, width/2, 450);

  //guide line
  strokeWeight(1);
  stroke(150);
  line(ll_firstPointX, ll_firstPointY, ll_firstControlX, ll_firstControlY);
  line(lr_firstPointX, lr_firstPointY, lr_firstControlX, lr_firstControlY);
  line(ll_secondPointX, ll_secondPointY, ll_secondControlX, ll_secondControlY);
  line(lr_secondPointX, lr_secondPointY, lr_secondControlX, lr_secondControlY);
  noStroke();
  fill(255, 0, 0);
  ellipse(ll_firstPointX, ll_firstPointY, 5, 5);
  ellipse(lr_firstPointX, lr_firstPointY, 5, 5);
  ellipse(ll_firstControlX, ll_firstControlY, 5, 5);
  ellipse(lr_firstControlX, lr_firstControlY, 5, 5);
  ellipse(lr_secondPointX, lr_secondPointY, 5, 5);
  ellipse(ll_secondPointX, ll_secondPointY, 5, 5);
  ellipse(lr_secondControlX, lr_secondControlY, 5, 5);
  ellipse(ll_secondControlX, ll_secondControlY, 5, 5);
}

