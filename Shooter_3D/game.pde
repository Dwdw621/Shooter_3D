float eyex, eyey, eyez, focusx, focusy, focusz, upx, upy, upz, leftRightAngle, topBotAngle;
int Btimer;
boolean w, a, s, d, r, f;

import java.awt.Robot;
Robot rbt;

//########## Textures ##########
PImage Bricks;
PImage Planks;

//########## Map Stuff ##########
color black = #000000; //Bricks
color white = #FFFFFF; //empty space
color blue = #0000FF; 
int gridSize;
PImage map; 

//########## Game objects ##########
ArrayList<GameObject> objects;

//########## Canvases ##########
PGraphics world;
PGraphics HUD;

void setup() {
  noCursor();
  Btimer = 0;

  //########## Create Canvases ##########
  world = createGraphics(width, height, P3D);
  HUD = createGraphics(width, height, P2D);

  //########## Objects ##########
  objects = new ArrayList<GameObject>(); 

  //########## Robot ##########
  try {
    rbt = new Robot();
  }
  catch(Exception e) {
    e.printStackTrace();
  }

  //########## Camera ##########
  leftRightAngle = 0;
  topBotAngle = -.5;
  eyex = 0;
  eyey = 9.25*height/11;
  eyez = 0;
  upx = 0;
  upy = 1;
  upz = 0;

  //########## Map ##########
  map = loadImage("map.png");
  gridSize = 100;

  //########## Blocks ##########
  Bricks = loadImage("Bricks.png");
  Planks = loadImage("Planks.png");
}


void draw() {
  world.beginDraw();
  world.textureMode(NORMAL);

  world.background(0);
  world.pointLight(255, 255, 255, eyex, eyey, eyez);
  world.camera(eyex, eyey, eyez, focusx, focusy, focusz, upx, upy, upz);

  drawFloor(height, gridSize);
  drawFloor(height-gridSize*4, gridSize);

  move();
  drawAxis();
  drawMap();
  Btimer++;

  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();
    if (obj.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  if (mousePressed == true && Btimer > 10) {
    objects.add(new Bullet());
    Btimer = 0;
  }
  world.endDraw();
  image(world, 0, 0);

  //########## HUD ##########
  HUD.beginDraw();
  HUD.clear();
  Crosshair();
  Minimap();
  HUD.endDraw();
  image(HUD, 0, 0);
}
