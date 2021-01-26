boolean canForward() {
  float fwdx, fwdz;
  int mapx, mapy;

  fwdx = eyex + cos(leftRightAngle)*250;
  fwdz = eyez + sin(leftRightAngle)*250;

  mapx = int(fwdx+2000) / gridSize;
  mapy = int(fwdz+2000) / gridSize;

  if (map.get(mapx, mapy) == white) {
    return true;
  } else {
    return false;
  }
}

boolean canRight() {
  float rgtx, rgtz;
  int mapx, mapy;

  rgtx = eyex + cos(leftRightAngle + radians(10))*250;
  rgtz = eyez + sin(leftRightAngle + radians(10))*250;

  mapx = int(rgtx+2000) / gridSize;
  mapy = int(rgtz+2000) / gridSize;

  if (map.get(mapx, mapy) == white) {
    return true;
  } else {
    return false;
  }
}

boolean canLeft() {
  float lftx, lftz;
  int mapx, mapy;

  lftx = eyex + cos(leftRightAngle - radians(10))*250;
  lftz = eyez + sin(leftRightAngle - radians(10))*250;

  mapx = int(lftx+2000) / gridSize;
  mapy = int(lftz+2000) / gridSize;

  if (map.get(mapx, mapy) == white) {
    return true;
  } else {
    return false;
  }
}

boolean canLStrafe() {
  float lstfx, lstfz;
  int mapx, mapy;

  lstfx = eyex + cos(leftRightAngle - radians(90))*200;
  lstfz = eyez + sin(leftRightAngle - radians(90))*200;
  
  mapx = int(lstfx+2000) / gridSize;
  mapy = int(lstfz+2000) / gridSize;

    if (map.get(mapx, mapy) == white) {
    return true;
  } else {
    return false;
  }
}

boolean canRStrafe() {
  float rstfx, rstfz;
  int mapx, mapy;

  rstfx = eyex + cos(leftRightAngle + radians(90))*200;
  rstfz = eyez + sin(leftRightAngle + radians(90))*200;
  
  mapx = int(rstfx+2000) / gridSize;
  mapy = int(rstfz+2000) / gridSize;

    if (map.get(mapx, mapy) == white) {
    return true;
  } else {
    return false;
  }
}

boolean canBackward() {
  float bwdx, bwdz;
  int mapx, mapy;

  bwdx = eyex + cos(leftRightAngle + radians(180))*100;
  bwdz = eyez + sin(leftRightAngle + radians(180))*100;
  
  mapx = int(bwdx+2000) / gridSize;
  mapy = int(bwdz+2000) / gridSize;

    if (map.get(mapx, mapy) == white) {
    return true;
  } else {
    return false;
  }
}
