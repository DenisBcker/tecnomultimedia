//rojo
class Enemigo {

  float x, y, xInicio;
  float vel;
  PImage image;

  Enemigo() {
    image = loadImage( "Techo.png" );
    int Image = image.height;
    println(Image);

    x = xInicio = 900;
    y = 350;
    vel = 2.9;
  }

  void dibujar() {

    pushMatrix();
    translate( x, y );
    image( image, 0, 0, 50, 50);
    popMatrix();
  }

  void mover() {
    x -= vel;
    if ( x <= -50 ) {
      x = xInicio;
    }
  }
}


class Enemigo2 {

  float x, y;
  float vel;
  PImage image;

  Enemigo2() {
    image = loadImage( "estalatita.png" );
    int Image = image.height;
    println(Image);

    x = 330;
    y = 10;
    vel = 1;
  }

  void dibujar() {

    pushMatrix();
    translate( x, y );
    image( image, 0, 0, 50, 50);
    popMatrix();
  }

  void mover() {
    y += vel;
    if ( y <= +50 ) {

    }
  }
}

class Enemigo2d {

  float x, y;
  float vel;
  PImage image;

  Enemigo2d() {
    image = loadImage( "estalatita.png" );
    int Image = image.height;
    println(Image);

    x = 420;
    y = -500;
    vel = 1.5;
  }

  void dibujar() {

    pushMatrix();
    translate( x, y );
    image( image, 0, 0, 50, 50);
    popMatrix();
  }

  void mover() {
    y += vel;
    if ( y <= +50 ) {

    }
  }
}
//oso
  class Enemigo3 {

  float x, y, xInicio;
  float vel;
  PImage image;

  Enemigo3() {
    image = loadImage( "enemigooso.png" );
    int Image = image.height;
    println(Image);

    x = xInicio = -50;
    y = 350;
    vel = 0.8;
  }

  void dibujar() {

    pushMatrix();
    translate( x, y );
    image( image, 0, 0, 80, 50);
    popMatrix();
  }

  void mover() {
    x += vel;
    if ( x >= 850 ) {
      x = xInicio;
    }
  }
}
