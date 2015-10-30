//declare variables
float x, y, velX, velY, diam;
float a, z, velA, velZ;
void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  a = width/1.5;
  z= height/1.5;
  velA = random (-5, 5);
  velZ = random (-5, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);
  //draw another ball
  ellipse(a,z, diam, diam);
  //add velocity to position
  x += velX;
  y += velY;
  //add velocity to second ball
  a += velA;
  z += velZ;
  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
  //bounce ball SECOND ONE if it hits walls
  if (a + diam/2 >= width) {
    velA = -abs(velA);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (a - diam/2 <= 0) {
    velA = abs(velA);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (z + diam/2 >= height) {
    velZ = -abs(velZ);
  } else if (z - diam/2 <= 0) {
    velZ = abs(velZ);
  }
}