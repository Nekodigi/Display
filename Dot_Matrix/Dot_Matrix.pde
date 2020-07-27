int dotS = 10;//dot size
PGraphics pg, raw;

void setup(){
  size(1000, 250);
  pg = createGraphics(width, height);
  raw = createGraphics(width, height);
}

void draw(){
  pg.beginDraw();
  pg.background(0);
  pg.textAlign(CENTER, CENTER);
  pg.textSize(115);
  pg.text("Art by Nekodigi", mouseX, height/2);
  pg.endDraw();
  image(pg, 0, 0);
  noStroke();
  raw.beginDraw();
  raw.background(0);
  raw.colorMode(HSB, 360, 100, 100, 100);
  for(int i=dotS/2; i<width; i+=dotS){
    for(int j=dotS/2; j<height; j+=dotS){
      if(brightness(pg.pixels[j*pg.width+i]) == 255)raw.fill((i/dotS+j/dotS+frameCount)%360, 100, 100);
      else raw.fill(0);
      raw.ellipse(i, j, dotS*0.8, dotS*0.8);
    }
  }
  raw.endDraw();
  image(raw, 0, 0);
}
