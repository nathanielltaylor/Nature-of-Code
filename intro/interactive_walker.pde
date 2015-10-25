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
    if (r < 0.5) {    
      int xvalue = (mouseX-x);
      int yvalue = (mouseY-y);
      if (xvalue != 0) {
        xvalue /= abs(xvalue);
      } 
      if (yvalue != 0) {
        yvalue /= abs(yvalue);
      }
      x += xvalue;
      y += yvalue;
    } else {
      int xvalue = int(random(-2, 2));
      int yvalue = int(random(-2, 2));
      x += xvalue;
      y += yvalue;
    }
  
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}