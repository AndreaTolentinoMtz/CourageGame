class ObjetosEscenario {
  float x, y; //Posicion en la pantalla
  float largo, ancho; //Tamaño de la imagen
  PImage imagen;  //Imagen del personaje que se va a utilizar
  
  
}

class BarraVida extends ObjetosEscenario {
  
  BarraVida (PImage imagen_, float x_, float y_, float largo_, float ancho_){
    x = x_;
    y = y_;
    imagen = imagen_;
    largo = largo_;
    ancho = ancho_;
  }
  
  void actualizar(int jugador) {//Recorre la imagen que representa la vida
    if (jugador == 1) {
      image(imagen,(jugador1.vida*400)/jugador1.vidatotal,y,largo,ancho); //Para el jugador 1
    }
    else {
      image(imagen, 800-((jugador2.vida*400)/jugador2.vidatotal),y,largo,ancho);//Para el jugador 2
    }
  }
  
}

class Ataque extends ObjetosEscenario {
  
  Ataque (PImage imagen_, float x_, float y_, float largo_, float ancho_){
    x = x_;
    y = y_;
    imagen = imagen_;
    largo = largo_;
    ancho = ancho_;
  }
  
  void atk() {
    image(imagen,x,y,largo,ancho);
  }
  
}
