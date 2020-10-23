Juego juego;

void setup() {
  size(800, 400, P3D);


  juego = new Juego();
}

void draw() {  

  juego.play();
}

void keyPressed() {

  juego.teclas();

  if ( key == ENTER ) {
    setup();
  }
}
