void Crosshair() {
  HUD.stroke(white);
  HUD.strokeWeight(3);
  HUD.line(width/2-10, height/2, width/2+10, height/2);
  HUD.line(width/2, height/2-10, width/2, height/2+10);
}

void Minimap() {
  HUD.image(map, 10, 10, 100, 100); //x2.5
  int miniX= int(eyex+2000)/gridSize;
  int miniY= int(eyez+2000)/gridSize;
  HUD.fill(255);
  HUD.text("X: " + miniX, 20, 125);
  HUD.text("Y: " + miniY, 20, 140);

  HUD.strokeWeight(0);
  HUD.noStroke();
  HUD.fill(255, 0, 0);
  HUD.rect(miniX*2.5+10, miniY*2.5+10, 5, 5);
}
