float a = 0.0;
float inc = TWO_PI/25.0;
float x;
float y;
float xAngle;
float yAngle;
float xAmplitude;
float yAmplitude;
float xRate;
float yRate;

void setup() {
  size(400, 400);
  xAngle = 500;
  yAngle = 400;
  xAmplitude = 200;
  yAmplitude = 200;
  xRate = 0.3;
  yRate = 0.1;
}

void draw() {
 
  for (int i = 0; i<500; i = i+10) {
    line(i, 100, i, 100+ sin(a)*60.0);
    a=a+inc;
  }
  xAngle += xRate;
  yAngle += yRate;
  
  x = width/2 + sin(xAngle) * xAmplitude;
  y = height/2 + cos(yAngle) * yAmplitude;
  colorMode(RGB, 100);
  map(x, 0, width, 0, 100);
  map(y, 0, height, 0, 100);
  fill(x, y, 300);
  rect(x, y, 50, 50);
}
