// A simple animation to generate some digital signs that market the
// Center of Creative Computation.
// Yong Bakos

final String BG_FILENAME = "background_crop_circles.jpg";
final String TITLE_FILENAME = "c3_title.png";
final int WIDTH = 1920;
final int HEIGHT = 340;
final float BG_SCROLL_SPEED = 0.4;
final int NUMBER_OF_BUBBLES = 500;

boolean saveFrames = false;
PImage background;
PImage title;
float bgY;

ArrayList<Circle> circles = new ArrayList<Circle>(NUMBER_OF_BUBBLES);

void setup() {
  size(WIDTH, HEIGHT);
  background = loadImage(BG_FILENAME);
  title = loadImage(TITLE_FILENAME);
  bgY = -background.height + height;
  for (int i = 0; i < NUMBER_OF_BUBBLES; ++i) {
    circles.add(new Circle());
  }
}

void draw() {
  bgY += BG_SCROLL_SPEED;
  background(0);
  image(background, 0, bgY);
  fill(0, 100);
  rect(0, 0, width, height);
  for (int i = 0; i < NUMBER_OF_BUBBLES; ++i) {
    circles.get(i).update();
    circles.get(i).draw();
  }
  image(title, width - title.width - 20, 0);
  if (saveFrames) saveFrame("c3sign_cropcircles-######.png");
}

void mousePressed() {
  saveFrames = !saveFrames;
}
