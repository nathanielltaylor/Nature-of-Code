void setup() {
  size(1000,1000);
  background(255);
}

void draw() {
  float r = randomGaussian();
  float g = randomGaussian();
  float b = randomGaussian();

  float sd = 127.5; 
  float mean = 127.5;
  r = constrain((r * sd) + mean,0,255);
  g = constrain((g * sd) + mean,0,255);
  b = constrain((b * sd) + mean,0,255);

  float xloc = randomGaussian();
  float yloc = randomGaussian();
  sd = width/8;
  mean = width/2;
  xloc = ( xloc * sd ) + mean;
  yloc = ( yloc * sd ) + mean;
  
  noStroke();
  fill(r,g,b);
  ellipse(xloc,yloc,16,16);
}