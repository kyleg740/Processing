void setup() {
  size(1000, 1000);
}

void draw() {
  for(int i = 50; i <= width; i+=50) {
    line(50, i, width, i);
  }
  
  for(int i = 50; i <= width; i+=50) {
    line(i, height - 50, i, 0);
  }
}
