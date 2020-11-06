Juego juego;

void setup() {
  size(800, 600);


  juego = new Juego();
}

void draw() {  
//if jugar =false){
  //historia.play}
  //else if (jugar =true){
    //juego.play
  juego.play();
}

void keyPressed() {

  juego.teclas();

  if ( key == ENTER ) {
    setup();
  }
}
