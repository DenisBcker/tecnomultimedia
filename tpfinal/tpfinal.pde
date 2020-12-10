import ddf.minim.*;
Minim musica;
AudioPlayer playe;


Controlador controlador;

void setup(){
  size(800,600);
  controlador = new Controlador();
musica = new Minim(this);
 playe = musica.loadFile("bosque.mp3");
 playe.play();
}

void draw(){
  background(200);
 controlador.pantallas();
 controlador.play();
}

void mouseClicked(){
controlador.ClickBotones();
}

void keyPressed() {
  controlador.Teclas();
}
