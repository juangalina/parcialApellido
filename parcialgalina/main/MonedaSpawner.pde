class MonedaSpawner {
  ArrayList<Moneda> monedas;
  int maxMonedas = 10;  

  MonedaSpawner() {
    monedas = new ArrayList<Moneda>();
    spawn();
  }

  void spawn() {
    if (monedas.size() < maxMonedas) {  
      float x = random(width);  
      monedas.add(new Moneda(x, 0));
    }
  }

  void update() {
    for (int i = monedas.size() - 1; i >= 0; i--) {
      Moneda m = monedas.get(i);
      m.update();
      if (m.y > height) {
        monedas.remove(i);  
      }
    }
    if (frameCount % 60 == 0) {
      spawn();
    }
  }

  void display() {
    for (Moneda m : monedas) {
      m.display();
    }
  }
}
