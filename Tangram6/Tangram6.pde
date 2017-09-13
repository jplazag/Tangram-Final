//Coordenadas
int [] cooCUA = {0,0,0,0};//Cuadrado
int [] cooTria = {0,0,50,900};//Triangulo negro
int [] coo1Tria = {0,0,30,600};//Triangulo amarillo
int [] coo2Tria = {0,0,1000,700};//Triangulo verde
int [] coo3Tria = {0,0,500,500};//Triangulo naranja
int [] coo4Tria = {0,0,1200,400};//Triangulo morado
int [] cooTRA = {0,0,700,700};//Trapecio
int [] giro = {0,0,0,0,0,0,0,0};
int seleccion;
int [] r = {0,0,0,0,0,0,0};
int [] g = {0,0,0,0,0,0,0};//Colores
int [] b = {0,0,0,0,0,0,0};
boolean cuadrado, triangulo, triangulo2, t_rapecio, triangulo3, triangulo4, triangulo5;
boolean cuadrado_2, triangulo_2, triangulo2_2, t_rapecio_2, triangulo3_2, triangulo4_2, triangulo5_2; //Variables para comprobar si se selecciono la figura
boolean verdad, v1, v2, v3 ,v4, v5, v6, ubicacion;
int barra ;
int espacios;
boolean traslapo = false;
int relleno = 0;
boolean [] ganar = {false,false,false,false,false,false,false};
PImage photo;



void setup(){
  size(1500,1000,P3D);  
  photo = loadImage("EjTangram1.gif");
}

void draw(){    
  switch(barra){
    case 0:
      background(54,39,31);
      fill(255, 255, 255);
      pushMatrix();
      translate(50, 700 );
      rotateX(PI/3);
      textSize(70 );
      text("En una galaxia no muy lejana un juego \n fue creado y por sus usuarios disfrutado... \n \n **************TANGRAM************** \n El tangram es un juego chino muy antiguo, \n que consiste en formar siluetas de figuras \n con las siete piezas dadas sin solaparlas. \n Para mover las fichas debes seleccionarlas \n con el click del mouse y arrastrar sin soltar \n el botón o con la tecla ENTER y moverlas \n con las letras w, s, a y d. \n Para rotar las piezas se debe presionar el \n n\u00famero que la pieza tiene asignado, el cual \n se puede verificar en la parte inferior de la \n pantalla.", 5 , 0 - millis()/20);
      popMatrix();
      if(millis()/1000 == 31){
        barra++;
      }
      break;
      
      case 1:
        background(54,39,31);
        textSize(130);
        fill(255, 255, 255);
        text("  ¿Quieres jugar? \n presiona espacio", 240, 550);
        break;
      
      case 2: //Primer problema
        noStroke();
        background(41,181,184);
        
        
        fill(54,39,31);
        rect(450,200,595,595);   
        
        movimientos();
        break;
        
      default:        
        background(54,39,31);
        fill(255, 255, 255);     
        textSize(80);
        text("Felicidades!!!!! Has pasado de nivel. \n Presiona espacio para continuar", 100, 500);
        break;
      
      case 4: //Segundo problema
        background(41,181,184);  
        fill(54,39,31);
        noStroke();
        triangle(350, 130, 350+420, 130, 350 + 420, 130 + 420);
        triangle(350 + 840, 130, 350+420, 130, 350 + 420, 130 + 420);
        quad(420 + 350, 420 + 130, 270 + 350, 270 + 130, 120 + 350, 420 + 130, 270 + 350, 570 + 130);
        quad(720 + 350, 420 + 130, 570 + 350, 270 + 130, 420 + 350, 420 + 130, 570 + 350, 570 + 130);
        quad(420 + 350, 420 + 130, 570 + 350, 570 + 130, 420 + 350, 720 + 130,  270 + 350, 570 + 130);
        triangle(270 + 350, 570 + 130, 120 + 350, 720 + 130, 420 + 350, 720 + 130);
        triangle(570 + 350, 570 + 130, 420 + 350, 720 + 130, 720 + 350, 720 + 130);
        
        movimientos();
        break;
        
      case 6: //Tercer problema
        relleno = 2000;
        background(41,181,184);  
        fill(54,39,31);
        noStroke();
        triangle(620, 400, 920, 700, 920, 100);//Triangulo grande
        triangle(920, 100, 1220, 100, 920, 400);//Triangulo mediano
        quad(620, 400, 470, 250, 620, 100, 770, 250);
        triangle(470, 250, 320, 100, 620, 100);//Triangulo pequeño
        triangle(920, 400, 920, 700, 1070, 550);
        quad(620, 700, 470, 550, 620, 400, 770, 550);
        triangle(770, 550, 470, 850, 1070, 850);
        
        movimientos();
        break;
      case 8: //Tercer problema
        relleno = 0;
        background(41,181,184);  
        fill(54,39,31);
        noStroke();
        triangle(960, 100, 540, 520, 540, 100);//Triangulo grande
        triangle(960, 100, 960, 310, 750, 310);
        triangle(960, 100, 960, 310, 1170, 100);
        triangle(960, 940, 540, 520, 540, 940);
        triangle(960, 940, 960, 730, 750, 730);
        triangle(960, 940, 960, 730, 1170, 940);
        triangle(540, 520, 750, 730, 750, 310);
        rect(750, 415, 210, 210);
        
        movimientos();
        break;
        
      case 10:
        background(41,181,184);
        fill(0, 102, 153);
        text("Ahora te reto a \nhacer un ganzo.\nTe recomiendo que\nutilices toda la altura. \nSi quieres una pista\npresiona 'p'.", 100, 300);
        movimientos();
        ganzo();
        if(keyPressed && key == 'p'){
          image(photo, 0, 0);
        }
        if(ganar[0] == true && ganar[1] == true && ganar[2] == true && ganar[3] == true && ganar[4] == true && ganar[5] == true){
          double tiempo = millis();
          while(millis() - tiempo < 3000){
          }
          barra++;
        }
        break;
        
      case 12:
        background(41,181,184);
        fill(0, 102, 153);
        text("Esta parte es para \nque explotes tu creatividad,\nhas las figuras que quieras\ny cuando termines presiona\nespacio", 100, 300);
        movimientos();
        break;
      case 14:
        background(54,39,31);
        fill(255, 255, 255);     
        textSize(80);
        text("     M\u00e1s niveles proximamente. \n          *****Esperalos*****", 100, 500);
        break;
        
      case 15:
        System.exit(-1);
        break;
  }
  if (keyPressed) {
    switch (key) {
      case ' ':
        barra++;
        key = 0;
        break;
      case '1':
        giro [1]++;
        key = 0;
        break;
      case '2':
        giro [2]++;
        key = 0;
        break;
      case '7':        
        giro [6]++;
        key = 0;
        break;
      case '4':
        giro [3]++;
        key = 0;
        break;
      case '5':
        giro [4]++;
        key = 0;
        break;
      case '3':
        giro [5]++;
        key = 0;
        break;
      case '6':
        giro [0]++;
        key = 0;
        break;
      case '8':
        giro [7]++;
        key = 0;
        break;
      case '\n':
        seleccion++;
        key = 0;
        break;
    }
  }
  switch(seleccion%8){
    case 1:
      cuadrado_2 = true;
      break;      
    case 2:
      cuadrado_2 = false;
      triangulo_2 = true;
      break;      
    case 3:
      triangulo_2 = false;
      triangulo2_2 = true;
      break;
    case 4:
      triangulo2_2 = false;
      triangulo3_2 = true;
      break;
    case 5:
      triangulo3_2 = false;
      triangulo4_2 = true;
      break;
    case 6:
      triangulo4_2 = false;
      triangulo5_2 = true;
      break;
    case 7:
      triangulo5_2 = false;
      t_rapecio_2 = true;
      break;
    case 0:
      t_rapecio_2 = false;
      break;
  }
  //println(espacios);
  println(ganar[0] + " " + 1);
  println(ganar[1] + " " + 2);
  println(ganar[2] + " " + 3);
  println(ganar[3] + " " + 4);
  println(ganar[4] + " " + 5);
  println(ganar[5] + " " + 6);
  //println(get(mouseX,mouseY));
}

void mouseDragged(){
  if((verdad == false)&&(v1 == false)&&(v2 == false)&&(v3 == false)&&(v4 == false)&&(v5 == false)&&(v6 == false)){
    cuadrado = comprobar_cuadrado();
    triangulo = comprobar_t1();
    triangulo2 = comprobar_t2();
    triangulo3 = comprobar_t3();
    triangulo4 = comprobar_t4();
    triangulo5 = comprobar_t5();
    t_rapecio = trapecio();    
  }
}

void mouseReleased() {
   verdad = false; 
   cuadrado = false;
   triangulo = false;
   triangulo2 = false;
   triangulo3 = false;
   triangulo4 = false;
   triangulo5 = false;
   t_rapecio = false; 
   v1 = false;
   v2 = false;
   v3 = false;
   v4 = false;
   v5 = false;
   v6 = false;
  
    loadPixels();
    espacios = 0;
    for(int x = 0; x < (width*height); x++){
      if(pixels[x] == -13228257){
        espacios ++;
      }
    }
    if(espacios < 2500 + relleno && (barra != 10 || barra != 12)){//Linea editada, me había faltado el condicional de barra !=12.
      traslapo = true;
    }
    if(traslapo){
      double tiempo2 = millis();
      while(millis() - tiempo2 < 3000){
      }
      barra++;
      traslapo = false;
    }
    updatePixels();
}
