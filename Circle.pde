class Circle {

  float diameter;
  float speed;
  float x;
  float y;
  color c;

  Circle() {
    x = random(0.25 * width, width);
    y = random(2 * height, 8 * height);
    c = color(random(150, 200), random(175, 255), random(150, 200));
    diameter = random(10, 100);
    speed = random(0.5, 2);
  }

  void update() {
    y -= speed;
  }

  void draw() {
    noStroke();
    fill(c, 150);
    ellipse(x, y, diameter, diameter);
  }

}