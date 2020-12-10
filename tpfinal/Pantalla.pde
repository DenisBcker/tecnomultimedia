


class Pantalla{
  


  PImage [] imag = new PImage [18];
Textos textos = new Textos();
Pantalla(){


  
 for (int i=0; i < imag.length; i++) {
   imag [i] = loadImage(i + ".jpg");
   } 
      
}
//---------------RESIZE---------------------------//
int PorcentajeX(int valor){
    return round(map(valor,0,800,0,width));
}
int PorcentajeY(int valor){
    return round(map(valor,0,600,0,height));
}


//----------------------------------- TEXTO GENÉRICA  -------------------------------//

void textoGenericas(int pantalla) {
  fill(255);
  textSize(20);
text(textos.TextoPantalla(pantalla),PorcentajeX(200), PorcentajeY(200));

}


//------------------------------------ MENÚ ------------------------------------------//

void pantallaMenu(int pantalla) {
  fill(255);
  textSize(60);
  image (imag[pantalla],PorcentajeX(0),PorcentajeY(0),800,600);
  text(textos.TextoPantalla(pantalla),PorcentajeX(200), PorcentajeY(300));

  
}

//---------------- CRÉDITOS---------------------//

void pantallaCreditos(int pantalla, int p2_Y) {
  fill(255);
  textSize(80);
  text("Créditos", PorcentajeX(300), PorcentajeY(120));
  textSize(25);
  image (imag[pantalla],PorcentajeX(0),PorcentajeY(0),800,600);
  text("Trabajo Práctico Final Tecnología Multimedial 1\n\n Alumno: Denis Becker Legajo: 85105/5\n\n Comisión: 1 - 8:00 AM Profesor: José Luis Bugiolachi\n\n JUEGO:(MUS)ALIEN VIAJANTE\n\n FDA 2020", PorcentajeX(100),PorcentajeY( p2_Y));

  

 }
 
 //--------------------- Inicio de Historia --------------------//
void pantallaHistoria(int pantalla) {
  fill(0);
  textSize(40);
text(textos.TextoPantalla(pantalla),PorcentajeX(20), PorcentajeY(60));
image (imag[pantalla],PorcentajeX(0),PorcentajeY(0),800,600);
}
//--------------------- Inicio de Historia --------------------//
void juego(int pantalla, int p2_Y) {

 fill(255);
textSize(25);
image (imag[pantalla],PorcentajeX(0),PorcentajeY(0),800,600);
  text("PORFAVOR APRETAR UN POCO LA FLECHA\n DERECHA O IZQUERDA Y LUEGO\n PRECIO CONTINUAR\n Trabajo Práctico Final Tecnología Multimedial 1\n\n Alumno: Denis Becker Legajo: 85105/5\n\n Comisión: 1 - 8:00 AM Profesor: José Luis Bugiolachi\n\n JUEGO:(MUS)ALIEN VIAJANTE\n\n FDA 2020", PorcentajeX(100),PorcentajeY( p2_Y));

}
}
