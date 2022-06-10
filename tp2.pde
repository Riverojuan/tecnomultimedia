// https:youtu.be/kD5y3kVZPVA
// Rivero juan
int centro = 250;

void setup() {
  size(500, 500);
  background(0);
}
void draw() {
  noFill();
  stroke (0, 0, 250);  
  for (int x=10; x<=450; x +=20) {
    ellipse(centro, centro, x, x);
  }
  noFill();
  for (int x=2; x<=450; x +=20) {
    stroke(random(255), random (255), random(255));
    ellipse(mouseX,mouseY, x, x);
  }
}
void keyPressed() {
  background(0);
}
