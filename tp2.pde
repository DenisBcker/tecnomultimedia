import ddf.minim.*;
Minim minin;
AudioPlayer musica;

PImage titulo, personajes, arbolcreditos; //imagenes
PFont fuente;
int centro1 = 80;
int centro2 = 500;
int posIni, renglon, espacio;
int bajar; 
int izquierda1 = -6;

void setup() {
  size(800, 600);
  noLoop();

  minin = new Minim(this);
  musica = minin.loadFile("introycreditos.mp3");

  titulo = loadImage("LOGO.jpg");
  personajes = loadImage("personajes.jpg");
  arbolcreditos = loadImage("arbol.jpg");

  fuente = loadFont("Arial-Black-48.vlw");
  textFont(fuente);
  textSize(25);
  

  bajar= - 0;
  posIni = 3000;
  renglon = 50;
  espacio = 200;
}
void draw() {
 
  background(0);  
  fill(0);
  
  posIni = posIni -3;
  bajar = bajar +2;
  izquierda1 = izquierda1 +6;

  image(arbolcreditos, 0, 0, width, height);
  image(personajes, bajar-1100, 0, width, height);
  
  textAlign(CENTER);
  text("Personajes principales y secundarios", width/2, posIni-2200+ renglon*0 + espacio);
  textAlign(LEFT); 
  //pincipales y secundarios
  text("Finn:", centro1, posIni-2200 + renglon*3 + espacio);
  text("Jeremy Shada", centro1, posIni-2200 + renglon*4 + espacio);
  text("Jack:", centro2, posIni-2200 + renglon*3 + espacio);
  text("John DiMaggio", centro2, posIni-2200 + renglon*4 + espacio);
  //pincipales y secundarios2
  text("Princess Bubblegum:", centro1, posIni-2200 + renglon*3 + espacio*1.5);
  text("Paige Moss", centro1, posIni-2200 + renglon*4 + espacio*1.5);
  text("Marceline Abadeer:", centro2, posIni-2200 + renglon*3 + espacio*1.5);
  text("Olivia Olson", centro2, posIni-2200 + renglon*4 + espacio*1.5);
  //pincipales y secundarios3
  text("Beemo:", centro1, posIni-2200 + renglon*3 + espacio*2);
  text("Niki Yang", centro1, posIni-2200 + renglon*4 + espacio*2);
  text("Ice King:", centro2, posIni-2200 + renglon*3 + espacio*2);
  text("Tom Kenny", centro2, posIni-2200 + renglon*4 + espacio*2);
  text("Princesa Flama:", centro1, posIni-2200 + renglon*3 + espacio*2.5);
  text("Jessica DiCicco", centro1, posIni-2200 + renglon*4 + espacio*2.5);
  text("Princesa grumoso:", centro2, posIni-2200 + renglon*3 + espacio*2.5);
  text("Pendleton Ward", centro2, posIni-2200 + renglon*4 + espacio*2.5);
  text("Conde Limonagrio:", centro1, posIni-2200 + renglon*3 + espacio*3);
  text("Justin Roiland", centro1, posIni-2200 + renglon*4 + espacio*3);
  text("Mentita:", centro2, posIni-2200 + renglon*3 + espacio*3);
  text("Steve Little", centro2, posIni-2200 + renglon*4 + espacio*3);





  textAlign(CENTER);
  text("CREDITOS", width/2, posIni);
  //Productor
  textAlign(CENTER);
  text("Producer", width/2, posIni + renglon*0 + espacio);

  //Personajes
  textAlign(CENTER);
  text("Kelly Crews", width/2, posIni + renglon*1 + espacio);

  //
  textAlign(CENTER);
  text("Voces", width/2, posIni + renglon*0 + espacio*2);
  //
  textAlign(CENTER);
  text("Craig Lewis", width/2, posIni + renglon*1 + espacio*2);
  textAlign(CENTER);
  text("Merriwether Williams", width/2, posIni + renglon*2 + espacio*2);
  textAlign(CENTER);
  text("Staff writer", width/2, posIni + renglon*4 + espacio*2);
  textAlign(CENTER);
  text("Tim McKeon", width/2, posIni + renglon*5 + espacio*2);
  textAlign(CENTER);
  text("Supervising Director", width/2, posIni + renglon*6 + espacio*2);
  textAlign(CENTER);
  text("Larry Leichliter", width/2, posIni + renglon*7 + espacio*2);
  textAlign(CENTER);
  text("Co Producer", width/2, posIni + renglon*8 + espacio*2);
  textAlign(CENTER);
  text("Pendleton Ward", width/2, posIni + renglon*9 + espacio*2);


  textAlign(LEFT); 
  //izquierda
  text("Production Manager", centro1, posIni + renglon*2 + espacio*4);
  text("Keith Mack", centro1, posIni + renglon*3 + espacio*4);
  //derecha
  text("Coordinator", centro2, posIni + renglon*2 + espacio*4);
  text("Dick Grunert", centro2, posIni + renglon*3 + espacio*4);

  //
  //
  text("Production Assitants:", centro1, posIni + renglon*3 + espacio*4.5);
  text("David C Smith", centro1, posIni + renglon*4 + espacio*4.5);
  //derecha
  text("Patrick Seery", centro2, posIni + renglon*3 + espacio*4.5);
  text("Joe Game", centro2, posIni + renglon*4 + espacio*4.5);
  //
  text("Lead character&Prop:", centro1, posIni + renglon*3 + espacio*5);
  text("Phil Rynda", centro1, posIni + renglon*4 + espacio*5);
  //
  text("Character:", centro2, posIni + renglon*3 + espacio*5);
  text("Natasha Allegri", centro2, posIni + renglon*4 + espacio*5);
  //
   text("Tom Herpich:", centro1, posIni + renglon*4 + espacio*5.5);
  text("David C Smith", centro1, posIni + renglon*5 + espacio*5.5);
  //
  text("Patrick Seery", centro2, posIni + renglon*4 + espacio*5.5);
  text("Joe Game", centro2, posIni + renglon*5 + espacio*5.5);


  image(titulo, izquierda1, 0, width, height); //logo
}
void mousePressed() {
  if ( musica.isPlaying() )
  {
  } else
  {
    musica.play();
  }

  loop();
}
