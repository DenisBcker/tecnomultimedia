class Botones{

 Botones(){
 
 }
 int PorcentajeX(int valor){
    return round(map(valor,0,800,0,width));
}
int PorcentajeY(int valor){
    return round(map(valor,0,600,0,height));
}

 //------------------------- BOTÓN GENÉRICO --------------------------------//

void boton(PImage colorBoton, String textBot, int TextSize, int BotPosX, int BotPosY, int posXtext, int posYtext){
   image(colorBoton,PorcentajeX(BotPosX),PorcentajeY(BotPosY));
   colorBoton.resize(0,62);
   fill(255);
   textSize(TextSize);
   text(textBot, PorcentajeX(posXtext),PorcentajeY(posYtext)); 
}  
   
}

 
 
 
 
 
 
 
 
 
