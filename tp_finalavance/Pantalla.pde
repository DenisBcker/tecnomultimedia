


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
  textSize(50);
  image (imag[pantalla],PorcentajeX(0),PorcentajeY(0),800,600);
  text("Trabajo Práctico Final \n\nTecnología Multimedial 1\n\n Alumno: Denis Becker\n\n Legajo: 85105/5\n\n Comisión: 1 - 8:00 AM\n\n Profesor:\n\n José Luis Bugiolachi\n\n JUEGO:\n\n(MUS)ALIEN VIAJANTE\n\nFDA\n\n2020", PorcentajeX(100),PorcentajeY( p2_Y));

  

 }
 
 //--------------------- Inicio de Historia --------------------//
void pantallaHistoria(int pantalla) {
  fill(0);
  textSize(40);
text(textos.TextoPantalla(pantalla),PorcentajeX(20), PorcentajeY(60));
image (imag[pantalla],PorcentajeX(0),PorcentajeY(0),800,600);
}
//--------------------- Inicio de Historia --------------------//
void juego(int pantalla) {
image (imag[pantalla],PorcentajeX(0),PorcentajeY(0),800,600);
}
}
