

Controlador controlador;

void setup(){
  size(800,600);
  controlador = new Controlador();

}

void draw(){
  background(200);
 controlador.pantallas();
}

void mouseClicked(){
controlador.ClickBotones();
}

void keyPressed() {
controlador.Teclas();
}
