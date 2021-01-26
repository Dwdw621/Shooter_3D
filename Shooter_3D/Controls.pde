void keyPressed() {
  if (key == 'd' || key == 'D') {
    d = true;
  }
  if (key == 'a' || key == 'A') {
    a = true;
  }
  if (key == 'w' || key == 'W') {
    w = true;
  }
  if (key == 's' || key == 'S') {
    s = true;
  }
  if (keyCode == 32) {
    r = true;
  }
  if (keyCode == 16) {
    f = true;
  }
}

void keyReleased() {
  if (key == 'd' || key == 'D') {
    d = false;
  }
  if (key == 'a' || key == 'A') {
    a = false;
  }
  if (key == 'w' || key == 'W') {
    w = false;
  }
  if (key == 's' || key == 'S') {
    s = false;
  }
  if (keyCode == 32) {
    r = false;
  }
  if (keyCode == 16) {
    f = false;
  }
} 
