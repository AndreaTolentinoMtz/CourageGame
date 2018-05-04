Personaje jugador1;
Personaje jugador2;
BarraVida J1barravida;
BarraVida J2barravida;
Ataque    Att01J1;
Ataque    Att01J2;
Ataque    Att02J1;
Ataque    Att02J2;

PImage IPintro, IPhistoria, IPseleccion, IPpelea, IPfinal; //Imagenes de las pantallas
PImage Icourage, Ishirley, Ikatz, Iclown, Iramses;//Imagenes de los personajes
int pantalla = 0; //Indice de la pantalla
int turno = 0;  
char sj1;
char sj2;
int ganador;

void setup() {
  size(840,590); 
  IPintro = loadImage("Intro.jpg");
  IPhistoria = loadImage("Historia.jpg");
  IPseleccion = loadImage("seleccion.jpg");
  IPfinal = loadImage("final.png");
  Icourage = loadImage("courage-seleccion-finalganador.png");
  Ishirley = loadImage("Shirley.png");
  Ikatz = loadImage("Katz.png");
  Iclown = loadImage("evil-clown.png");
  Iramses = loadImage("King_Ramses.png");
  
  J1barravida = new BarraVida(loadImage("Muriel.png"),400,0,90,90);//Constructor de la barra de vida
  J2barravida = new BarraVida(loadImage("Justo.png"),440,0,75,75);
  Att01J1 = new Ataque(loadImage("att02.png"),590,270,250,250);//Constructores de los dos ataques
  Att01J2 = new Ataque(loadImage("att02.png"),20,270,250,250);
  Att02J1 = new Ataque(loadImage("att01.png"),590,270,250,250);
  Att02J2 = new Ataque(loadImage("att01.png"),20,270,250,250);
}



void draw() {
  println (mouseX +"," + mouseY); 
  switch (pantalla){
    case 0:
      intro();
      break;
    
    case 1:
      historia();
      break;
    
    case 2:
      seleccion();
      break;
    
    case 3:
      seleccion2();
      break;
    
    case 4:
      pelea();
      break;
    
    case 5:
      fin();
      break;
    
  }
}
