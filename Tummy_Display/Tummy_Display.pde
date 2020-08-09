PImage mask, base;

void setup(){
  size(1000, 1000);
  //fullScreen();
  mask = loadImage("GodTurtleMask.png");
  base = loadImage("GodTurtle.png");
  mask.resize(height, height);
  base.resize(height, height);
  
}

void draw(){
  background(255);
  float x = map(sin(float(frameCount)/200), -1, 1, -1100, 1100)+width/2;
  //under layer
  image(base, (width-height)/2, 0, height, height);
  
  //middle layer
  fill(0);
  textSize(100);
  textAlign(CENTER, CENTER);
  text("Welcome to the Nekodigi channel!", x, height/3*2);
  
  //top layer
  image(mask, (width-height)/2, 0, height, height);
  
  //hide overhanding part
  noStroke();
  fill(255);
  rect(0, 0, (width-height)/2, height);
  rect(width-(width-height)/2, 0, width, height);
}
