// A simple animation to generate some digital signs that market the
// Center of Creative Computation.
// Yong Bakos

PImage background;
PFont helvetica;
PImage title;
float bgY = 0;

void setup() {
  size(1920, 340);
  background = loadImage("background_crop_circles.jpg");
  title = loadImage("c3_title.png");
  helvetica = loadFont("HelveticaNeue-100.vlw");
}

void draw() {
  background(0);
  image(background, 0, bgY);
  image(title, width - title.width - 50, 0);
  bgY -= 0.5;
}
