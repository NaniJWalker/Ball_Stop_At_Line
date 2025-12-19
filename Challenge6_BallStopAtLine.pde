int x;
int y;
int lineX;
int lineY;
void setup() {
  size(800, 800);

  lineX=width/2;
  lineY=height;
}
void draw() {
  //cover circles with background
  background(250);
  //rectangle that covers screen
  fill(100, 0, 0);
  rect(0, 0, lineX+400, lineY);
  //line down the middle
  stroke(5);
  line(lineX, 0, lineX, lineY);
  noStroke();
  //set mouse position
  x=mouseX;
  y=mouseY;
  //Circle can only be moved in the x direction when it is less than half the width
  if (x<lineX) {
    fill(0);
    circle(x, y, 25);
  } else {
    fill(0);
    circle(lineX, y, 25);
  }
  }
