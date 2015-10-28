Walker w;

void setup() {
  size(255,255);
  w = new Walker();
  background(0);
}

void draw() {
  w.step();
  w.render();
}

class Walker {
  float x,y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(255,0,0);
    strokeWeight(1);
    point(x,y);
  }

 void step() {
    float r = random(1);
    float dis = randomGaussian();
    println(dis);
    if (r < 0.5) {    
     x += dis;
    } else {
     y += dis;
    }
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}