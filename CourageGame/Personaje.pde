class Personaje {
  String nombre;
  int ataque;
  int vidatotal;
  float vida;
  float x, y; //Posicion en la pantalla
  float largo, ancho; //Tamaño de la imagen
  PImage imagen;  //Imagen del personaje que se va a utilizar

  Personaje (String nombre_, int ataque_,int vida_, PImage personaje_, float largo_, float ancho_){
    nombre = nombre_;
    ataque = ataque_;
    vida = vida_;
    vidatotal = vida_;
    imagen = personaje_;
    largo = largo_;
    ancho = ancho_;
  }
  
  void display(float x, float y) {
    image(imagen, x, y, largo, ancho);
    textSize(50);
    text(nombre,x,y-120);
  }  
}
