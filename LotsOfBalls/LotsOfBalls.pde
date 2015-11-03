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
int count = 10;
//declare arrays
float[] x = new float [count];
float[] y = new float [count];
float[] velX = new float [count];
float[] velY = new float [count];
float[] diam = new float [count];


void setup() {
  //set size of canvas
  size(800, 600);
for(int i = 0; i<count; i++){
  //initialize variables
  x[i]= random(width);
  y[i]= random(height);
  diam[i] = random(5,100);
  velX[i] = random(-5, 5);
  velY[i] = random(-5, 5);

  }
}



void draw() {
  //draw background to cover previous frame
  background(0);
for(int i = 0; i<count; i++){
  //draw ball
  ellipse(x[i], y[i], diam[i], diam[i]);
 

  //draw another ball
  //ellipse(a,z, diam, diam);
  //add velocity to position
  x[i] += velX[i];
  y[i]+= velY[i];

  //bounce ball if it hits walls
  if (x[i] + diam[i]/2 >= width) {
    velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[i] - diam[i]/2 <= 0) {
    velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y [i]+ diam[i]/2 >= height) {
    velY[i] = -abs(velY[i]);
  } else if (y[i] - diam[i]/2 <= 0) {
    velY[i] = abs(velY[i]);
  }
  
  
}
}