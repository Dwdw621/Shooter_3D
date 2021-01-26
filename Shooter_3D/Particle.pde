class Particle extends GameObject {
  PVector vel;

  Particle(float x, float y, float z, float s) {
    loc = new PVector(x, y, z);
    vel = new PVector(random(-5, 5), random(-5, 5), random(-5, 5));
    lives = 255;
    size = s;
  }

  void act() {
    if (lives <= 0) lives = 0;
    loc.add(vel);
  }

  void show() {
    world.pushMatrix();
    world.translate(loc.x, loc.y, loc.z);
    lives-=5;
    world.fill(white, lives);
    world.noStroke();
    world.box(size);
    world.popMatrix();
  }
}
