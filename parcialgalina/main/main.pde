import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

PImage fondo;
MonedaSpawner spawner;
int contadorMonedas;

void setup() {
  size(800, 600);
  fondo = loadImage("fondo.jpg");
  fondo.resize(width, height); 
  spawner = new MonedaSpawner();
  contadorMonedas = 0;
}

void draw() {
  background(fondo);
  spawner.update();
  spawner.display();
  textSize(32);
  fill(255);
  text("Monedas: " + contadorMonedas, 10, 40);
}
