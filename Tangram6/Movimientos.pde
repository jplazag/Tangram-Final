void movimientos(){
      textSize(100);
        fill(0, 102, 153);
      text("Tangram", 530, 90); 
        textSize(25);
        text("T.Negro = 1, T.Amarillo = 2, T.Morado = 3, T.Verde = 4 T.Naranja = 5, Cuadrado = 6 y Trapecio = 7 y 8", 100, 970);
        
                                                       //Cuadrado
      r [0]= 4;
      g [0]= 53;
      b [0]= 155;                                                  
    if(cuadrado){
      cooCUA [0] = mouseX;
      cooCUA [1] = mouseY; 
      cooCUA [2] = cooCUA [0];
      cooCUA [3] = cooCUA [1];
      
    }
    if(cuadrado_2){
      cooCUA [2] = movTecladox(cooCUA [2]);
      cooCUA [3] = movTecladoy(cooCUA [3]);
      r [0]= 255;
      g [0]= 255;
      b [0]= 255;
    }
    pushMatrix();
      translate(cooCUA [2],cooCUA [3]);
      if(giro [0]%2 == 1){
        rotate(PI/4);  
      }
      fill(r [0], g [0], b [0]);
      rect(0,0,210,210);
    popMatrix();
                                                     //Trinagulo negro
     r [1] = 2;
     g [1] = 2;
     b [1] = 2;
    if(triangulo){
       cooTria [0] = mouseX;
       cooTria [1] = mouseY; 
       cooTria [2] = cooTria [0];
       cooTria [3] = cooTria [1];
    }
    if(triangulo_2){
      cooTria [2] = movTecladox(cooTria [2]);
      cooTria [3] = movTecladoy(cooTria [3]);
      r [1] = 255;
      g [1] = 255;
      b [1] = 255;
    }
    pushMatrix();    
    fill(r [1],g [1],b [1]);
    translate(cooTria [2], cooTria [3]);
    rotate(radians(giro(giro [1]%8)));
    triangle(0, 0, 210, 0, 0, -210);
    popMatrix();
    
                                                     //Triangulo amarillo
    r [2] = 233;
    g [2] = 239;
    b [2] = 1;
    if(triangulo2){
      coo1Tria [0] = mouseX;
      coo1Tria [1] = mouseY; 
      coo1Tria [2] = coo1Tria [0];
      coo1Tria [3] = coo1Tria [1];
    }
    if(triangulo2_2){
      coo1Tria [2] = movTecladox(coo1Tria [2]);
      coo1Tria [3] = movTecladoy(coo1Tria [3]);
      r [2] = 255;
      g [2] = 255;
      b [2] = 255;
    }
    pushMatrix();    
    fill(r [2],g [2],b [2]);
    translate(coo1Tria [2], coo1Tria [3]);
    rotate(radians(giro(giro [2]%8)));
    triangle(0, 0, 210, 0, 0, -210);
    popMatrix();
                                                      //Triangulo verde
    r [3] = 0;
    g [3] = 100;
    b [3] = 0;
    if(triangulo3){
      coo2Tria [0]= mouseX;
      coo2Tria [1] = mouseY; 
      coo2Tria [2] = coo2Tria [0];
      coo2Tria [3] = coo2Tria [1];
    }
    if(triangulo3_2){
      coo2Tria [2] = movTecladox(coo2Tria [2]);
      coo2Tria [3] = movTecladoy(coo2Tria [3]);
      r [3] = 255;
      g [3] = 255;
      b [3] = 255;
    }
    pushMatrix();    
    fill(r [3],g [3],b [3]);
    translate(coo2Tria [2], coo2Tria [3]);
    rotate(radians(giro(giro [3]%8)));
    triangle(0, 0, 420, 0, 0, -420);
    popMatrix();
                                                      //Triangulo naranja
    r [4] = 248;
    g [4] = 73;
    b [4] = 22;
    if(triangulo4){
      coo3Tria [0] = mouseX;
      coo3Tria [1] = mouseY; 
      coo3Tria [2] = coo3Tria [0];
      coo3Tria [3] = coo3Tria [1];
    }
    if(triangulo4_2){
      coo3Tria [2] = movTecladox(coo3Tria [2]);
      coo3Tria [3] = movTecladoy(coo3Tria [3]);
      r [4] = 255;
      g [4] = 255;
      b [4] = 255;
    }
    pushMatrix();    
    fill(r [4],g [4],b [4]);
    translate(coo3Tria [2], coo3Tria [3]);
    rotate(radians(giro(giro [4]%8)));
    triangle(0, 0, 420, 0, 0, -420);
    popMatrix();
                                                       //Triangulo morado
    r [5] = 82;
    g [5] = 73;
    b [5] = 200;
    if(triangulo5){
      coo4Tria [0]= mouseX;
      coo4Tria [1] = mouseY; 
      coo4Tria [2] = coo4Tria [0];
      coo4Tria [3] = coo4Tria [1];
    }
    if(triangulo5_2){
      coo4Tria [2] = movTecladox(coo4Tria [2]);
      coo4Tria [3] = movTecladoy(coo4Tria [3]);
      r [5] = 255;
      g [5] = 255;
      b [5] = 255;
    }
    pushMatrix();    
    fill(r [5],g [5],b [5]);
    translate(coo4Tria [2], coo4Tria [3]);
    rotate(radians(giro(giro [5]%8)));
    triangle(0, 0, 300, 0, 0, -300);
    popMatrix();
                                                          //Trapecio
    r [6] = 200;
    g [6] = 0;
    b [6] = 0;
    if(t_rapecio){
      cooTRA [0] = mouseX;
      cooTRA [1] = mouseY; 
      cooTRA [2] = cooTRA [0];
      cooTRA [3] = cooTRA [1];
    }
    if(t_rapecio_2){
      cooTRA [2] = movTecladox(cooTRA [2]);
      cooTRA [3] = movTecladoy(cooTRA [3]);
      r [6] = 255;
      g [6] = 255;
      b [6] = 255;
    }                                                         
    pushMatrix();    
    fill(r [6],g [6],b [6]);
    translate(cooTRA [2], cooTRA [3]);
    rotate(radians(giro(giro [6]%8)));
    if(giro [7]%2 == 0){
    triangle(0, 0, 150, 150, - 150, 150);
    triangle(0, 0, 150, 150, 300, 0 );
    }
    if(giro [7]%2 == 1){
    triangle(0, 0, 150, 150, - 150, 150);
    triangle(0, 0, -150, 150, -300, 0 );
    }
    popMatrix();
  
}