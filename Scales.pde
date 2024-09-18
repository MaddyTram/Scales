void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}

float red = 10;
float green = 10;
float blue = 30;

void draw() {
  for (int y = 550; y > -10; y -= 30) {
    for (int x = 40; x < 550; x += 70) {
      scale(x, y);
    }
  }
}
void scale(int x, int y) {
  strokeWeight(5);
  fill(red, green, blue);
  beginShape();
  vertex(x, y);
  vertex(x - 50, y);
  vertex(x - 70, y - 30);
  vertex(x - 70, y - 30);
  vertex(x - 50, y - 60);
  vertex(x, y - 60);
  vertex(x + 20, y - 30);
  vertex(x + 20, y - 30);
  vertex(x, y);
  endShape();
  green = random(255);
  blue = random(230);
  red = random(10);
}
