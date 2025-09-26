Ball b1, b2, b3;

void setup() {
  size(1800,900);
  ellipseMode(RADIUS);
  createNewBalls();
  
}

void createNewBalls() {
  // new calls the constructor
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball();
}

void draw() {
  background(100);
  b1.update();
  b2.update();
  b3.update(); 
  
  b1.makeEmBounce(b2);
  b1.makeEmBounce(b3);
  b2.makeEmBounce(b3);
}

void mousePressed() {
  
}

void keyPressed() {
  if( key == ' ' ) {
    createNewBalls();
  }
}
