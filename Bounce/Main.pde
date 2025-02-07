float x, y, radius, vx, vy, ax, ay, g;
color newColor;

int ballCount;

ArrayList<Ball> ballList = new ArrayList<Ball>();

void setup() {
  size(800, 600);
  g = 0.5;
  for (int i = 0; i < 10; i++) {
    x = random(width);
    y = random(height);
    radius = random(50);
    vx = 0;
    while (vx == 0) {
      vx = (float)(int)(random(21) - 10);
    }
    vy = 0;
    while (vy == 0) {
      vy = (float)(int)(random(21) - 10);
    }
    newColor = color(random(256), random(256), random(256));
    Ball one = new Ball(x, y, radius, vx, vy, 0, 0, newColor);
    ballList.add(one);
  }
}

void draw() {
  background(0);
  ballCount = ballList.size();
  for (int i = 0; i < ballCount; i++) {
    Ball ball =ballList.get(i);
    ball.drawBall();
    ball.moveBall();
    if (ball.moveBall()) {
      newColor = color(random(256), random(256), random(256));
      Ball one = new Ball(x, y, radius, vx, vy, 0, 0, newColor);
      ballList.add(one); 
      
    }
  }
}
