class Controlador {
  Pantalla pantallas;
  Botones boton;
  Juego juego;


  //-----velocidad creditos-----//
  int p2_Y_inicial = 500;
  int p2_Y = p2_Y_inicial;

  //------- pantallas & imagenes -------//
  PImage [] imag = new PImage [13];
  int pantalla;
  PFont letras; 
  PImage boton_negro;
  PImage boton_azul;
  String estado;

  Controlador() {
    pantalla = 0;
    pantallas = new Pantalla();
    boton = new Botones();
    juego = new Juego();
 //sacar de ultima
 estado = "inicio";
     



    letras = loadFont ("ArialMT-24.vlw");
    boton_negro = loadImage ("negro.png") ;
    boton_azul = loadImage ("azul.png") ;
    textFont(letras);
  }


  //---------------RESIZE---------------------------//
  int PorcentajeX(int valor) {
    return round(map(valor, 0, 800, 0, width));
  }
  int PorcentajeY(int valor) {
    return round(map(valor, 0, 600, 0, height));


    //------------//////////---------- INDICADOR DE PANTALLAS (ESTADOS) -----------////////////------------//
  } 
  void pantallas() {
    ////NUMERO DE PANTALLA Y DE TEXTO PARA PANTALLA


    if (pantalla == 0) {    
      pantallas.pantallaMenu(pantalla);
      boton.boton(boton_azul, "Créditos", 30, 560, 455, 592, 490);
      boton.boton(boton_azul, "Inicio", 30, 90, 455, 125, 490);
      
    } else if (pantalla == 1) {   
      pantallas.pantallaCreditos(0, p2_Y);
      boton.boton(boton_azul,"menú", 30, 60, 50, 95, 85);
      boton.boton(boton_azul, "Inicio", 30, 90, 455, 125, 490);
      if ( p2_Y > 200) {
        p2_Y--;
      }
    } else if (pantalla == 2) {    
      pantallas.pantallaHistoria(1);
      //BOTON OSCURO IZQUEIRDA VISUAL
      boton.boton(boton_negro, "ENTRAR A LA NAVE", 20, 0, 500, 10, 525);
      //BOTON VERDE DERECHA VISUAL
      boton.boton( boton_negro, "IRSE CON EL EQUIPO", 20, 555, 500, 560, 525);
      pantallas.textoGenericas(1);
      
    } else if (pantalla == 3 ) {
      pantallas.pantallaHistoria(pantalla);
      boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
    } else if  (pantalla == 4) {
       pantallas.pantallaHistoria(pantalla);
        boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
    } else if (pantalla == 5) {
       pantallas.pantallaHistoria(pantalla);
        boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
    } else if  (pantalla == 6) {
       pantallas.pantallaHistoria(pantalla);
        boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
    } else if (pantalla == 7) {
      ////el cero elige el numero de la pantalla
      pantallas.pantallaHistoria(pantalla);
      pantallas.textoGenericas(2);
      boton.boton(boton_negro, "Quedarse", 20, 0, 500, 10, 525);
      boton.boton(boton_negro, "huir",  20, 555, 500, 560, 525);
      
    } else if  (pantalla == 8) {
      
    } else if (pantalla == 9) {
      pantallas.textoGenericas(2);
      boton.boton(boton_azul, "adiossssss", 25, 550, 390, 575, 425);
      boton.boton(boton_negro, "alejarse", 25, 556, 455, 568, 490);
      
    } else if (pantalla == 10) {
      pantallas.textoGenericas(2);
      boton.boton(boton_azul, "Fin", 25, 610, 455, 663, 490);
       boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
    } else if  (pantalla == 11) {
       boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
    } else if  (pantalla == 12) {
       boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
    } else if (pantalla == 13) {
      pantallas.pantallaHistoria(17);
     
    }
    println(pantalla);
  }
  //////////////////////////////////////////////////////////////////////PANTALLAS VER DE UNA CAMBIAR POR LAS MAIS


  // ------------//////////// BOTONES --------------------///////////--------------//

  void ClickBotones() {
    //----------------------------- CODIGOS ÚNICOS ---------------------------//
    if (pantalla == 0) {
      //Botón Créditos
      if (mouseX > PorcentajeX(560) && mouseX < PorcentajeX(700) && mouseY > PorcentajeY(455) && mouseY < PorcentajeY(515)) {
        pantalla = 1;
      }

      //Botón Inicio
      if (mouseX > PorcentajeX(90) && mouseX < PorcentajeX(255) && mouseY > PorcentajeY(455) && mouseY < PorcentajeY(515)) {
        pantalla = 2;
        ///de aqui9 correguido
      }
    } else if (pantalla == 1) {    
      //Botón Presentación
      if (mouseX > PorcentajeX(60) && mouseX < PorcentajeX(195) && mouseY > PorcentajeY(50) && mouseY < PorcentajeY(110)) {

        pantalla = 0;
      } 
      //Botón Inicio  CREDITO
      if (mouseX > PorcentajeX(90) && mouseX < PorcentajeX(255) && mouseY > PorcentajeY(455) && mouseY < PorcentajeY(515)) {
        pantalla = 13;
        //a aqui9 coreguido para ariba
      }
    } else if (pantalla == 2) {
      //Botón izquierdo
      if (mouseX > PorcentajeX(0) && mouseX < PorcentajeX(255) && mouseY > PorcentajeY(495) && mouseY < PorcentajeY(560)) {
        pantalla = 3; //0,255,495,560
      } else if (pantalla == 2) {
        //Botón derecho BOTON CORREGUIDO
        if (mouseX > PorcentajeX(555) && mouseX < PorcentajeX(800) && mouseY > PorcentajeY(495) && mouseY < PorcentajeY(560)) {
          pantalla = 4; //555,800,495,560
        }
        //---------------------------------------------- codigos reciclables-------------------------------------//
      }
    } else if (pantalla == 3) {
      //boton solo centro continuar
      boton(295, 547, 497, 565, 4);
    } else if (pantalla == 4) {
      boton(295, 547, 497, 565, 5);
 } else if (pantalla == 5) {
      boton(295, 547, 497, 565, 6);
 
    } else if (pantalla == 6) {
      boton(295, 547, 497, 565, 7);
    } else if (pantalla == 7) {
      //botones cuando son 2 alabes
      botones(0,255,495,560, 555,800,495,560, 11, 10);
    } else if (pantalla == 8) {
      boton(610, 745, 455, 515, 9);
    } else if (pantalla == 9) { //556, 706, 455, 515
      botones(515, 700, 390, 450, 556, 706, 455, 515, 10, 12);
    } else if (pantalla == 10) {
      boton(610, 745, 455, 515, 1);
    } else if (pantalla == 11) {
      boton(610, 745, 455, 515, 1);
    } else if (pantalla == 12) {
      boton(610, 745, 455, 515, 0);
    }
  }
  //-------------------------------- BOTONES GENÉRICOS --------------------------------------//
  //para un boton
  void boton (int c1, int c2, int c3, int c4, int b1) {
    if (mouseX > PorcentajeX(c1) && mouseX < PorcentajeX(c2) && mouseY > PorcentajeY(c3) && mouseY < PorcentajeY(c4)) {
      pantalla = b1;
    }
  }
  //para 2 botones
  void botones (int c1, int c2, int c3, int c4, int c5, int c6, int c7, int c8, int b2, int b3) {
    if (mouseX > PorcentajeX(c1) && mouseX < PorcentajeX(c2) && mouseY > PorcentajeY(c3) && mouseY < PorcentajeY(c4)) {
      pantalla = b2;
    } else if (mouseX > PorcentajeX(c5) && mouseX < PorcentajeX(c6) && mouseY > PorcentajeY(c7) && mouseY < PorcentajeY(c8)) {
      pantalla = b3;
    }
  }
  void Teclas() {    

    if (pantalla == 3) {
      //BARRA DE ESPACIO
      if (key == ENTER ) {
        pantalla = 5;
      }
    } else if (pantalla == 5) {
      if (key == ENTER) {
        pantalla = 6;
      }
    }
  }
}
