void drawMap() {
  for (int x = 0; x < map.width; x++) {
    for (int y = 0; y < map.height; y++) {
      color c = map.get(x, y);
      if (c == black) {
        texturedCube(x*gridSize-2000, height-gridSize, y*gridSize-2000, Bricks, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize*2, y*gridSize-2000, Bricks, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize*3, y*gridSize-2000, Bricks, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize*3, y*gridSize-2000, Bricks, gridSize);
      }
    }
  }
}


void drawAxis() {
  world.stroke(177, 25, 126);
  world.strokeWeight(5);
  world.line(0, 0, 0, 2000, 0, 0);
  world.line(0, 0, 0, 0, 2000, 0);
  world.line(0, 0, 0, 0, 0, 2000);
}


void drawFloor(int alt, int spacing) {
  stroke(255);
  strokeWeight(1);
  int x = -2000;
  int z = -2000;

  while (z < 2000) {
    texturedCube(x, alt, z, Planks, spacing);
    x += spacing;
    if (x >= 2000) {
      x = -2000;
      z += spacing;
    }
  }
}
