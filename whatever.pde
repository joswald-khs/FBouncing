Ball b1, b2, b3;

void setup() {
  size(600,600);
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
  b1.move();
  b1.draw();
  b2.move();
  b2.draw();
  b3.move();
  b3.draw();  
}

void mousePressed() {
  createNewBalls();
}

class Ball {
  // properties of a ball
  float x, y, dx, dy, r;
  color c;
  
  // constructor
  // how we "build" objects from classes
  Ball() {
    // use "this." because it will save trouble later 
    this.x = width/2;
    this.y = height/2;
    this.dx = random(-3,3);
    this.dy = random(-3,3);
    this.r = random(10,50);
    this.c = color(int(random(256)),int(random(256)),int(random(256)));    
  }
  
  void move() {
    this.x = this.x + this.dx;
    this.y = this.y + this.dy;    
  }
  
  void draw() {
    fill(this.c);
    circle(this.x,this.y,this.r);    
  }
}
