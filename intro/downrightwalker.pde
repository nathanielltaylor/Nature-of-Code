Walker w;

void setup() {
  size(640,360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.render();
}

class Walker {
  int x,y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(255,160,122);
    strokeWeight(3);
    point(x,y);
  }

 void step() {
    float r = random(1);
    if (r < 0.3) {    
      x++;
    } else if (r < 0.5) {
      x--;
    } else if (r < 0.8) {
      y++;
    } else {
      y--;
    }
  
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}