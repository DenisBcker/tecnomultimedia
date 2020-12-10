class Textos{
  String texto [];
 // int cantTextos;
Textos(){

  texto = new String [20];
CargarTextos();

}
 
void CargarTextos(){
texto[0] = "Viaje espacial";                              // 10 espacio de distancia
texto[1] = "(MUS) Estrella su nave en la tierra en un accidente\n          luces acercándose con un ruido molesto" ;
texto[2] = "Tubo fallas en su nave antes\n de llegar con sus amigos.";
texto[3] = "Sale afuera para ver su entorno y ve muchas\n luces acercándose con un ruido molesto.";
texto[4] = "ORDENADOR HOSTILES ACERCANDOSE \nPONGACE ASALVO";
texto[5] = "Una gran vista de su nave y \nlos hostiles que se acercaban";
texto[6] = "Pasa la noche en la cueva de la Montaña";
texto[7] = "Despierta luego de una larga noche";
texto[8] = "";
texto[9] = "Perdiste preciona ESPACIO para volver a empezar";
texto[10] = "Pasas la noche en los arboles y mañana\n sigues caminando";
texto[11] = "Te  encuentras con un pastisal cerca de la montaña";
texto[12] = "\n\n            Encuentras una cosecha de maiz";
texto[13] = "Dejas un mensaje para que sus amigos lo vean";
texto[14] = "\n\nTe perdiste y tus amigos no te encontraron";
texto[15] = "Llegaron por ti lograste sobrevivir";
texto[16] = "\n\n \n\nGanaste sobreviviste ";
texto[17] = "\n\n(Haga click en la opción que desee elegir)";
texto[18] = "PRECIO EL BOTON DE INCIO PARA EMPEZAR \n\n";
texto[19] = "PORFAVOR APRETAR UN POCO LA FLECHA DERECHA O IZQUERDA Y LUEGO PRECIO CONTINUAR";
}
String TextoPantalla(int pantalla){
    return texto[pantalla];
  }
}
