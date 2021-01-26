void move() {
  if (d && canRStrafe()) {
    eyex += cos(leftRightAngle + PI/2)*10;
    eyez += sin(leftRightAngle + PI/2)*10;
  }
  if (a && canLStrafe()) {
    eyex -= cos(leftRightAngle + PI/2)*10;
    eyez -= sin(leftRightAngle + PI/2)*10;
  }
  if (w && canForward() && canRight() && canLeft()) {
    eyex += cos(leftRightAngle)*10;
    eyez += sin(leftRightAngle)*10;
  }

  if (s && canBackward()) {
    eyex -= cos(leftRightAngle)*10;
    eyez -= sin(leftRightAngle)*10;
  }

  focusx = eyex + cos(leftRightAngle)*300;
  focusy = eyey + tan(topBotAngle)*300;
  focusz = eyez + sin(leftRightAngle)*300;


  //########## Mouse Controls ##########
  if (abs(pmouseX - mouseX) < width - 50) leftRightAngle -= (pmouseX - mouseX)*0.001;
  if (abs(pmouseY - mouseY) < height - 50) topBotAngle -= (pmouseY - mouseY)*0.001;

  if (topBotAngle > PI/2.1) topBotAngle = PI/2.1;
  if (topBotAngle < -PI/2.1) topBotAngle = -PI/2.1;

  if (mouseX > width - 2) rbt.mouseMove(5, mouseY);
  if (mouseX < 2) rbt.mouseMove(width - 5, mouseY);

  //if (mouseY > height - 100) rbt.mouseMove(mouseX, 10);
  //if (mouseY < 5) rbt.mouseMove(mouseX, height - 80);
}
