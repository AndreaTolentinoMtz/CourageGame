void keyPressed(){
  switch(pantalla){
    case 0: //intro
      if (key == ENTER || key == ENTER){
        pantalla = 1;
      }
      break;
    
    case 1:  //historia
      if ((key == 'O'|| key == 'o')){
        pantalla = 2;
      }
      break;
    
    case 2:  //seleccion
      if (key == 'C'||key== 'c'){
        jugador1 = new Personaje("Courage",10,100,Icourage,150,250);
        pantalla=3;
      }
    
      if (key == 'S'||key== 's'){
        jugador1 = new Personaje("Shirley",10,100,Ishirley,200,250);
        pantalla=3;
      }
  
      if (key == 'W'||key== 'w'){
        jugador1 = new Personaje("Clown",10,100,Iclown,150,250);
        pantalla=3;  
      } 
      
      if (key == 'K'||key== 'k'){
        jugador1 = new Personaje("Katz",10,100,Ikatz,200,250);
        pantalla=3;
      } 
      
     if (key == 'R'||key== 'r'){
        jugador1 = new Personaje("Ramses",10,100,Iramses,180,300);
        pantalla=3;
      } 
    
      break;
    
    case 3:
    
      if (key == 'C'||key== 'c'){
        jugador2 = new Personaje("Courage",10,100,Icourage,150,250);
        pantalla=4;
      }
      
      if (key == 'S'||key== 's'){
        jugador2 = new Personaje("Shirley",10,100,Ishirley,200,250);
        pantalla=4;
      }
  
      if (key == 'W'||key== 'w'){
        jugador2 = new Personaje("Clown",10,100,Iclown,150,250);
        pantalla=4;  
      } 
      
      if (key == 'K'||key== 'k'){
        jugador2 = new Personaje("Katz",10,100,Ikatz,200,250);
        pantalla=4;
      } 
      
     if (key == 'R'||key== 'r'){
        jugador2 = new Personaje("Ramses",10,100,Iramses,180,300);
        pantalla=4;
      } 
      
      break;
    
    case 4:  //pelea  
    
      if (key == 'A' || key == 'a'){
        if (turno == 0){
          jugador2.vida = jugador2.vida - jugador1.ataque*random(0.5,2.0);//Random para hacer variable el daño y ambos tengan posivilidad de ganar
          Att01J1.atk();
          turno = 1;
        }
      }
      if (key == 'S' || key == 's'){
        if (turno == 0){
          jugador2.vida = jugador2.vida - jugador1.ataque*random(3.0);
          Att02J1.atk();
          turno = 1;
        }
      }
      
      
      if (key == 'Ñ' || key == 'ñ'){
        if(turno == 1){
          jugador1.vida = jugador1.vida - jugador2.ataque*random(0.5,2.0);
          Att01J2.atk();
          turno = 0;
        }
      }
      if (key == 'L' || key == 'l'){
        if(turno == 1){
          jugador1.vida = jugador1.vida - jugador2.ataque*random(3.0);
          Att02J2.atk();
          fill(255,0,0);
          turno = 0;
        }
      }
      
      if (key == 'F' || key == 'f'){
        pantalla = 0;
        sj1 = 0;
        sj2 = 0;
        turno = 0;
        //turnoDeSeleccion = 1;
        ganador = 0;
      }
      break;
    
    case 5:  //fin
      if (key == ENTER){
        pantalla = 2;
        sj1 = 0;
        sj2 = 0;
        turno = 0;
        //turnoDeSeleccion = 1;
        ganador = 0;
      }
      break;
    
    default:
    
  }
}
