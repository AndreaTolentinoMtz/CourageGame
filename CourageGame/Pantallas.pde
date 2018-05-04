void intro(){
  //println("pantalla " + pantalla);
  background(0);
  fill(0,255,0);
  image(IPintro,15,30,800,350);
  fill(0,255,0);
  textSize(40);
  text("Presione ENTER para comenzar",130,500);

}

void historia(){
  //println("pantalla " + pantalla);
  background(0);
  image(IPhistoria,0,0,840,590);
  fill(255);
  textSize(30);
  text("Muriel, Justo y Coraje fueron al circo pero aparecieron unos monstruos que intentarán llevarse a Muriel y a Justo... ¡Ayuda a Coraje a salvarlos!",30,20,790,210);
  text("Presiona O para empezar",250,470);
}

void seleccion(){
  //println("pantalla " + pantalla);
  background(255);
  image(IPseleccion,0,0);
  fill(0,255,0);
  textSize(30);
  text("Jugador 1 presiona la letra que representa al personaje",20,30);
  //Dibujar imagenes de los personajes
  dibujarPersonajes(); //Dibuja todos los personajes
}


void seleccion2(){
  background(0,255,0);
  image(IPseleccion,0,0);
  fill(0,255,0);
  textSize(30);
  text("Jugador 2 presiona la letra que representa al personaje",20,30);
  dibujarPersonajes();
}


void pelea(){
  background(0,255,0);
  //Fondo de la pantalla de pelea
  image(loadImage("pelea.jpg"),0,0,840,590);
  jugador1.display(50,250);
  jugador2.display(610,250);
  
  J1barravida.actualizar(1);
  J2barravida.actualizar(2);
  
  textSize(30);
  text("Presiona Ñ/L para atacar",470,50);
  fill(#24FAFF);
  text("Presiona A/S para atacar",10,50);
  text("Presiona F para abandonar la pelea",200,550);
  
  
  if (jugador1.vida <= 0){
    ganador = 2;
    pantalla = 5;
  }
  
  if (jugador2.vida <= 0){
    ganador = 1;
    pantalla = 5;
  }
}


void fin(){
  background(0);
  image(IPfinal,200,-80,600,480);
  textSize(40);
    text("Presiona ENTER para jugar de nuevo", 30,500);
  if(ganador == 1){
    text("Jugador1 gana", 20,130, 200,250);
    jugador1.display(400,100);
  }
  
  if (ganador == 2){
    text("Jugador2 gana", 20,130, 200,250);
    jugador2.display(400,100);
  }
}

void dibujarPersonajes() {
  image(Icourage,30,50,150,250);
  textSize(50);
  text("C",70,330);
  
  image(Ishirley,250,100,200,250);
  textSize(50);
  text("S",280,330);
  
  image(Iclown,360,320,150,250);
  textSize(50);
  text("W",420,560);
  
  image(Ikatz,400,50,200,250);
  textSize(50);
  text("K",500,330);
  
  image(Iramses,660,20,180,300);
  textSize(50);
  text("R",730,330);
}
