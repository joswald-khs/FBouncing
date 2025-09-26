Ball b1, b2, b3;

int whichBallToReplace = 1;
int score = 0;

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
  fill(0);
  text(whichBallToReplace, 10, 10);
  text(score, 10, 25);
  
  b1.update();
  b2.update();
  b3.update(); 
  
  b1.makeEmBounce(b2);
  b1.makeEmBounce(b3);
  b2.makeEmBounce(b3);
  
  if( frameCount % 30 == 0 ) { // if I divide frameCount by 100 and the remainder is 0
    rotateReplace();
  }
}

void mousePressed() {
  // is where we clicked inside a ball?
  if( isPointInsideBall(mouseX,mouseY,b1 ) ) {
    b1 = new Ball();
    score++;
  }
  if( isPointInsideBall(mouseX,mouseY,b2 ) ) {
    b2 = new Ball();
    score++;
  }
  if( isPointInsideBall(mouseX,mouseY,b2 ) ) {
    b2 = new Ball();
    score++;
  }  
  
}

boolean isPointInsideBall(float x,float y, Ball ball) {
  return dist(x,y,ball.x,ball.y) < ball.r;
}

void rotateReplace() {
  if( whichBallToReplace % 3 == 0 ) {
    b1 = new Ball(mouseX,mouseY);
    whichBallToReplace++; //whichBallToReplace += 1; //whichBallToReplace = whichBallToReplace + 1;
  } else if( whichBallToReplace % 3 == 1 ) {
    b2 = new Ball(mouseX, mouseY);
    whichBallToReplace++;
  } else if( whichBallToReplace % 3 == 2 ) {
    b3 = new Ball(mouseX, mouseY);
    whichBallToReplace++;
  } 
}

void keyPressed() {
  if( key == ' ' ) {
    createNewBalls();
  }
}
