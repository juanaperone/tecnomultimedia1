import processing.sound.*;

 //import.processing.sound.*; 
 SoundFile musicadefondo; 
  SoundFile ganaste;
  SoundFile perdiste;
 Aventura aventura;

 
void setup() {
  size(1000,1000);
  surface.setResizable(true);
  aventura = new Aventura();
  musicadefondo = new SoundFile( this , "musicadefondo.wav");
    musicadefondo.loop();
    ganaste= new SoundFile(this, "ganaste.wav");
    perdiste= new SoundFile(this, "perdiste.flac");
}

void draw() {
  aventura.dibujar();
  aventura.dibujarJuego();
}

void mousePressed() {
  aventura.cambiarP();
  aventura.mouse();
}

void keyPressed() {
  aventura.teclas();
}

void mouseMoved(){
 aventura.moverJu(); 
}
