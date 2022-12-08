import processing.video.*;


String PATH = "C:/Users/chino/OneDrive/Desktop/10000000_5634341126619195_7317459083171883870_n.mp4";
Movie mov;

void setup() {
  size(1000, 1000);
  frameRate(30);
  mov = new Movie(this, PATH);
  mov.play();
  mov.speed(1);
  mov.volume(1); 
  colorMode(RGB);
  background(5);
}
void movieEvent(Movie m) {
  m.read();
}
void draw() {
  mov.loadPixels();
  //image(mov, 0, 0, width, height);
  int x = width/2;
  int y = height/2;
  for(int i=0; i<100; i++) {
    int c = mov.get(x, y);
    float r = red(c);
    float g = green(c);
    float b = blue(c);
    fill(r, g, b);
    ellipse(x, y, r*10, g*10);
    x += sin(b*15) * b * 20;
    y += cos(r*15) * b * 20; 
  }
}
