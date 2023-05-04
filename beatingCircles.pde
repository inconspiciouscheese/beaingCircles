void setup() {
  size(600, 600);
  ellipseMode(CENTER);
  colorMode(RGB, 255);
  background(0, 0, 0);
}

int i = 100;
int j = 100;
int size = 0;
int maxSize = 50;

void draw() {
  fill(0, 0, 0, 10);
  rect(0, 0, 600, 600);
  fill (255, mouseX, 255);
  noStroke();
  for (i = 100; i < 600; i+= 200) {
    for (j = 100; j < 600; j+= 200) {
      ellipse(i, j, size, size);
    }
  }

  if (!mousePressed) {
    if (size < maxSize) {
      size ++;
    } else {
      size = 0;
      System.out.println(frameCount);
    }
   if (frameCount > 101 && frameCount < 408);
     saveFrame("beatingCircles-###.png");

  }
  
}
