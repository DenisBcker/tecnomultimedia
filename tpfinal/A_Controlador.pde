class Controlador {
  Pantalla pantallas;
  Botones boton;

  Personaje p;
  Enemigo e;
  Enemigo2 e2;
  Enemigo2d e2d;
  Enemigo3 e3;
  Ganar G;



  //-----velocidad creditos-----//
  int p2_Y_inicial = 500;
  int p2_Y = p2_Y_inicial;

  //------- pantallas & imagenes -------//
  PImage [] imag = new PImage [20];
  int pantalla;
  PFont letras; 
  PImage boton_negro;
  PImage boton_azul;
  String estado;




  Controlador() {
    pantalla = 0;
    pantallas = new Pantalla();
    boton = new Botones();
    p = new Personaje();
    e = new Enemigo();
    e2 = new Enemigo2();
    e2d = new Enemigo2d();
    e3 = new Enemigo3();
    G = new Ganar();




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
    ///DIBUJA LA PANTALLA QUE SE LE ORDENA

    //PANTALLA:0
    if (pantalla == 0) {    
      pantallas.pantallaMenu(pantalla);
      boton.boton(boton_azul, "Créditos", 30, 580, 455, 592, 490);
      boton.boton(boton_azul, "Inicio", 30, 90, 455, 125, 490);
      //PANTALLA:1
    } else if (pantalla == 1) {   
      pantallas.pantallaCreditos(0, p2_Y);
      boton.boton(boton_azul, "menú", 30, 60, 50, 95, 85);
      if ( p2_Y > 200) {
        p2_Y--;
      }
      //PANTALLA:2
    } else if (pantalla == 2) {    
      pantallas.pantallaHistoria(1);
      boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
      pantallas.textoGenericas(1);
      //PANTALLA:3
    } else if (pantalla == 3 ) {
      pantallas.pantallaHistoria(2);
      boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
      pantallas.textoGenericas(2);
      //PANTALLA:4
    } else if  (pantalla == 4) {
      pantallas.pantallaHistoria(3);
      boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
      pantallas.textoGenericas(3);
      //PANTALLA:5
    } else if (pantalla == 5) {
      pantallas.pantallaHistoria(4);
      //BOTON OSCURO IZQUEIRDA VISUAL
      boton.boton(boton_negro, "ENTRAR A LA NAVE", 20, 0, 500, 10, 525);
      //BOTON OSCURO DERECHA VISUAL
      boton.boton( boton_negro, "IRSE CON EL EQUIPO", 20, 555, 500, 560, 525);
      pantallas.textoGenericas(4);
      //PANTALLA:6
    } else if  (pantalla == 6) {
      pantallas.pantallaHistoria(5);
      //BOTON OSCURO IZQUEIRDA VISUAL
      boton.boton(boton_negro, "IR A LAS MONTAÑAS", 20, 0, 500, 10, 525);
      //BOTON OSCURO DERECHA VISUAL
      boton.boton( boton_negro, "IR AL BOSQUE", 20, 555, 500, 560, 525);
      pantallas.textoGenericas(17);
      //PANTALLA:7
    } else if (pantalla == 7) {
      pantallas.pantallaHistoria(6);
      boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
      pantallas.textoGenericas(5);
      //PANTALLA:8
    } else if  (pantalla == 8) {
      pantallas.pantallaHistoria(7);

      boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
      pantallas.textoGenericas(6);
      //PANTALLA:9
    } else if (pantalla == 9) {
      pantallas.pantallaHistoria(8);
      //BOTON OSCURO IZQUEIRDA VISUAL
      boton.boton(boton_negro, "ESPERAR POR AYUDA", 20, 0, 500, 10, 525);
      //BOTON OSCURO DERECHA VISUAL
      boton.boton( boton_negro, "SALIR A EXPLORAR", 20, 555, 500, 560, 525);

      pantallas.textoGenericas(7);

      //PANTALLA:10
    } else if (pantalla == 10) {
      pantallas.pantallaHistoria(11);
      boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
      pantallas.textoGenericas(12);

      //PANTALLA:11
    } else if  (pantalla == 11) {
      pantallas.pantallaHistoria(12);
      //BOTON OSCURO IZQUEIRDA VISUAL
      boton.boton(boton_negro, "ESPERAR LA NOCHE ", 20, 0, 500, 10, 525);
      //BOTON VERDE DERECHA VISUAL
      boton.boton( boton_negro, "IRSE A EXPLORAR MAS", 20, 555, 500, 560, 525);
      pantallas.textoGenericas(12);

      //PANTALLA:12
    } else if  (pantalla == 12) {
      pantallas.pantallaHistoria(13);
      pantallas.textoGenericas(15);
      pantallas.textoGenericas(16);
      boton.boton(boton_negro, "Precionar para volver a inicio", 20, 300, 500, 300, 530);

      //PANTALLA:13
    } else if (pantalla == 13) {
      pantallas.pantallaHistoria(17);

      //PANTALLA:14
    } else if  (pantalla == 14) {
      pantallas.pantallaHistoria(14);
      pantallas.textoGenericas(14);
      boton.boton(boton_negro, "Precionar para volver a inicio", 20, 300, 500, 300, 530);
      
      //PANTALLA:15
    } else if  (pantalla == 15) {
      pantallas.pantallaHistoria(10);
      boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
      pantallas.textoGenericas(10);
      
      //PANTALLA:16
    } else if  (pantalla == 16) {
      pantallas.pantallaHistoria(16);
      boton.boton(boton_negro, "Precionar para volver a inicio", 20, 300, 500, 300, 530);
      pantallas.textoGenericas(11);
      
      //PANTALLA:17
    } else if  (pantalla == 17) {
      pantallas.pantallaHistoria(7);
      boton.boton(boton_negro, "Preciona para Continuar", 20, 300, 500, 320, 530);
      pantallas.textoGenericas(10);
      
      //PANTALLA:18
    } else if  (pantalla == 18) {
      pantallas.pantallaHistoria(17);
      boton.boton(boton_azul, "INICIO", 25, 60, 50, 95, 85);
      pantallas.textoGenericas(18);
      
      //PANTALLA:19
    } else if  (pantalla == 19) {
      pantallas.juego(0, p2_Y);
      if ( p2_Y > 200) {
        p2_Y--;
      }
      boton.boton(boton_azul, "                         GANASTE SALISTE DE LA CUEVA", 30, 80, 50, 95, 85);
      boton.boton(boton_azul, "CONTINUAR", 18, 80, 50, 95, 85);
      
      //PANTALLA:20
    } else if  (pantalla == 20) {
      pantallas.juego(0, p2_Y);
      if ( p2_Y > 200) {
        p2_Y--;
      }
      boton.boton(boton_azul, "                         PERDISTE EL OSO TE ATRAPO", 30, 80, 50, 95, 85);
      boton.boton(boton_azul, "CONTINUAR", 18, 80, 50, 95, 85);
    }  
    println(pantalla);
  }


  // ------------//////////// BOTONES///////////--------------//

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
      }
    } else if (pantalla == 1) {    
      //Botón regreso inicio (menu)
      if (mouseX > PorcentajeX(60) && mouseX < PorcentajeX(195) && mouseY > PorcentajeY(50) && mouseY < PorcentajeY(110)) {
        //60,195,50,110
        pantalla = 0;
      }
    } else if (pantalla == 5) {
      //Botón izquierdo
      if (mouseX > PorcentajeX(0) && mouseX < PorcentajeX(255) && mouseY > PorcentajeY(495) && mouseY < PorcentajeY(560)) {
        pantalla = 6; //0,255,495,560
      } else if (pantalla == 5) {
        //Botón derecho 
        if (mouseX > PorcentajeX(555) && mouseX < PorcentajeX(800) && mouseY > PorcentajeY(495) && mouseY < PorcentajeY(560)) {
          pantalla = 16; //555,800,495,560
        }
        //---------------------------------------------- codigos reciclables-------------------------------------//
      }
    } else if (pantalla == 2) {
      boton(295, 547, 497, 565, 3);
    } else if (pantalla == 3) {
      //boton solo centro continuar  boton(295, 547, 497, 565, X NUMERO DE PANTALLA);
      boton(295, 547, 497, 565, 4);
    } else if (pantalla == 4) {
      boton(295, 547, 497, 565, 5);
    } else if (pantalla == 6) {
      //botones solo cuando hay 2 opciones para elejir botones(0, 255, 495, 560, 555, 800, 495, 560, x, x NUMEROS DE PANTALLA);
      botones(0, 255, 495, 560, 555, 800, 495, 560, 7, 16);
    } else if (pantalla == 7) {
      boton(295, 547, 497, 565, 8);
    } else if (pantalla == 8) { 
      boton(295, 547, 497, 565, 9);
    } else if (pantalla == 9) { 
      botones(0, 255, 495, 560, 555, 800, 495, 560, 18, 10);
    } else if (pantalla == 10) {
      boton(295, 547, 497, 565, 11);
    } else if (pantalla == 11) {
      botones(0, 255, 495, 560, 555, 800, 495, 560, 12, 14);
    } else if (pantalla == 12) {
      boton(295, 547, 497, 565, 0);
    } else if (pantalla == 14) {
      boton(295, 547, 497, 565, 0);
    } else if (pantalla == 15) {
      boton(295, 547, 497, 565, 17);
    } else if (pantalla == 16) {
      boton(295, 547, 497, 565, 17);
    } else if (pantalla == 17) {
      boton(295, 547, 497, 565, 9);
    } else if (pantalla == 18) {
      boton(60, 195, 50, 110, 13);
    } else if (pantalla == 19) {
      boton(60, 195, 50, 110, 10);
    } else if (pantalla == 20) {
      boton(60, 195, 50, 110, 9);
    }
  }
  //-------------------------------- BOTONES GENÉRICOS --------------------------------------//
  //PARA UN BOTON
  void boton (int c1, int c2, int c3, int c4, int b1) {
    if (mouseX > PorcentajeX(c1) && mouseX < PorcentajeX(c2) && mouseY > PorcentajeY(c3) && mouseY < PorcentajeY(c4)) {
      pantalla = b1;
    }
  }
  //PARA 2 BOTONES
  void botones (int c1, int c2, int c3, int c4, int c5, int c6, int c7, int c8, int b2, int b3) {
    if (mouseX > PorcentajeX(c1) && mouseX < PorcentajeX(c2) && mouseY > PorcentajeY(c3) && mouseY < PorcentajeY(c4)) {
      pantalla = b2;
    } else if (mouseX > PorcentajeX(c5) && mouseX < PorcentajeX(c6) && mouseY > PorcentajeY(c7) && mouseY < PorcentajeY(c8)) {
      pantalla = b3;
    }
  }
  void play() {
    if ( pantalla == 13) {
//JUEGO EJECUTAR
      p.saltar();
      p.dibujar();
      G.dibujar();
      e.mover();
      e.dibujar();
      e2.mover();
      e2.dibujar();
      e2d.mover();
      e2d.dibujar();
      e3.mover();
      e3.dibujar();
    }
//COLISIONES
    boolean colisiono = p.colision( e );
    boolean colisiono2 = p.colision( e2 );

    boolean colisiono3 = p.colision( e3 );
    boolean colisiono4 = p.colision( G );
    boolean colisiono5 = p.colision( e2d );
    if ( colisiono || colisiono2 || colisiono3 || colisiono5) 
    {
      pantalla = 20;
    } else if ( colisiono4) {
      pantalla = 19;
    }
  }
//OPCION MOVER CON TECLA 
//COMENTARIO NO LOGRE SACAR LA SOBRE POSICION DEL PERSONA MIENTRA SIGUE LA HISTORIA
  void Teclas() {    
    p.mover();
    if ( key == CODED && keyCode == UP ) {
      p.saltar = true;
    }
  }
}
