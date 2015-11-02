//declaring arrays
//int[] numbers;
//color[] c;
//float[] n;

//inititalizing arrays
//numbers= new int[10]
//c = new color[5];
//n = {35.6, 41.7, 2.0001};

//declaring and initializing arrays
//int[] numbers = new int[200];

//declare variables

//x, y, velX, velY, diam;
//float a, z, velA, velZ;

//declare arrays
float[] x = new float [2];
float[] y = new float [2];
float[] velX = new float [2];
float[] velY = new float [2];
float[] diam = new float [2];


void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[0]= width/2;
  y[0]= height/2;
  diam[0] = 80;
  velX[0] = random(-5, 5);
  velY[0] = random(-5, 5);
  x[1] = width/2;
  y[1] = height/2;
  diam[1] = 80;
  velX[1] = random(-5, 5);
  velY[1] = random(-5, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(x[1], y[1], diam[1], diam[1]);
  //draw another ball
  //ellipse(a,z, diam, diam);
  //add velocity to position
  x[0] += velX[0];
  y[0]+= velY[0];
  //add velocity to second ball
  x[1] += velX[1];
  y[1] += velY[1];
  //bounce ball if it hits walls
  if (x[0] + diam[0]/2 >= width) {
    velX[0] = -abs(velX[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[0] - diam[0]/2 <= 0) {
    velX[0] = abs(velX[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y [0]+ diam[0]/2 >= height) {
    velY[0] = -abs(velY[0]);
  } else if (y[0] - diam[0]/2 <= 0) {
    velY[0] = abs(velY[0]);
  }
  //bounce ball SECOND ONE if it hits walls
  if (x[1] + diam[1]/2 >= width) {
    velX[1] = -abs(velX[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[1] - diam[1]/2 <= 0) {
    velX[1] = abs(velX[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[1] + diam[1]/2 >= height) {
   velY[1] = -abs(velY[1]);
  } else if (y[1] - diam[1]/2 <= 0) {
    velY[1] = abs(velY[1]);
  }
}