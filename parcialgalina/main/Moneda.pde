class Moneda {
  PImage img;
  float x, y;
  float speed;
  int size = 40;  

  Moneda(float x, float y) {
    img = loadImage("moneda.png");
    img.resize(size, size); 
    this.x = x - size / 2; 
    this.y = y;
    speed = 3;
  }

  void update() {
    y += speed;
    if (y > height) {
      contadorMonedas++;
      y = -img.height;
    }
  }

  void display() {
    image(img, x, y);
  }
}
