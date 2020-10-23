class Ganar {

  float x, y;
  PImage image;

  Ganar() {
    image = loadImage( "salida.png" );
    int altoImage = image.height;
    println(altoImage);

    x = 740;
    y = 320;
  }

  void dibujar() {

    image( image, x, y, 75, 100);
  }
}
//listo
