boolean comprobar_cuadrado(){  
    if(((mousePressed == true) && (get(mouseX,mouseY) == -16501349))){
     verdad = true;
    }    
    return verdad;
}
boolean comprobar_t1(){
   if(((mousePressed == true) && (get(mouseX,mouseY) == -16645630))){
     v1 = true;
    }
    return v1;
}
boolean comprobar_t2(){
   if(((mousePressed == true) && (get(mouseX,mouseY) == -1446143))){
     v2 = true;
    }
    return v2;
}
boolean comprobar_t3(){
   if(((mousePressed == true) && (get(mouseX,mouseY) == -16751616))){
     v3 = true;
    }
    return v3;
}
boolean comprobar_t4(){
   if(((mousePressed == true) && (get(mouseX,mouseY) == -505578))){
     v4 = true;
    }
    return v4;
}
boolean comprobar_t5(){
   if(((mousePressed == true) && (get(mouseX,mouseY) == -11384376))){
     v5 = true;
    }
    return v5;
}
boolean trapecio(){
   if(((mousePressed == true) && (get(mouseX,mouseY) == -3670016))){
     v6 = true;
    }
    return v6;
}

void ganzo(){  
  if((cooTria[3] - cooTRA[3] < 70 &&  cooTria[3] - cooTRA[3] > 50) && (cooTRA[2] - cooTria[2] < 160 &&  cooTRA[2] - cooTria[2] > 140) || (coo1Tria[3] - cooTRA[3] < 70 &&  coo1Tria[3] - cooTRA[3] > 50) && (cooTRA[2] - coo1Tria[2] < 160 &&  cooTRA[2] - coo1Tria[2] > 140)){
    ganar[0] = true;
  }else{ganar[0] = false;}
  if((cooTria[2] - cooCUA[2] < 10 &&  cooTria[2] - cooCUA[2] > -10) && (cooCUA[3] - cooTria[3] < 100 &&  cooCUA[3] - cooTria[3] > 80) || (coo1Tria[2] - cooCUA[2] < 10 &&  coo1Tria[2] - cooCUA[2] > -10) && (cooCUA[3] - coo1Tria[3] < 100 &&  cooCUA[3] - coo1Tria[3] > 80)){
    ganar[1] = true;
  }else{ganar[1] = false;}
  if((coo1Tria[2] - cooCUA[2] < 10 &&  coo1Tria[2] - cooCUA[2] > -10) && (coo1Tria[3] - cooCUA[3] < 310 &&  coo1Tria[3] - cooCUA[3] > 290) || (cooTria[2] - cooCUA[2] < 10 &&  cooTria[2] - cooCUA[2] > -10) && (cooTria[3] - cooCUA[3] < 310 &&  cooTria[3] - cooCUA[3] > 290)){
    ganar[2] = true;
  }else{ganar[2] = false;}
  if((coo1Tria[2] - coo4Tria[2] < 160 &&  coo1Tria[2] - coo4Tria[2] > 140) && (coo4Tria[3] - coo1Tria[3] < 160 &&  coo4Tria[3] - coo1Tria[3] > 140) || (cooTria[2] - coo4Tria[2] < 160 &&  cooTria[2] - coo4Tria[2] > 140) && (coo4Tria[3] - cooTria[3] < 160 &&  coo4Tria[3] - cooTria[3] > 140)){
    ganar[3] = true;
  }else{ganar[3] = false;}
  if((coo2Tria[2] - coo4Tria[2] < 220 &&  coo2Tria[2] - coo4Tria[2] > 200) && (coo2Tria[3] - coo4Tria[3] < 220 &&  coo2Tria[3] - coo4Tria[3] > 200) || (coo3Tria[2] - coo4Tria[2] < 220 &&  coo3Tria[2] - coo4Tria[2] > 200) && (coo3Tria[3] - coo4Tria[3] < 220 &&  coo3Tria[3] - coo4Tria[3] > 200)){
    ganar[4] = true;
  }else{ganar[4] = false;}
  if((coo3Tria[2] - coo2Tria[2] < 310 &&  coo3Tria[2] - coo2Tria[2] > 290) && (coo2Tria[3] - coo3Tria[3] < 130 &&  coo2Tria[3] - coo3Tria[3] > 110) || (coo2Tria[2] - coo3Tria[2] < 310 &&  coo2Tria[2] - coo3Tria[2] > 290) && (coo3Tria[3] - coo2Tria[3] < 130 &&  coo3Tria[3] - coo2Tria[3] > 110)){
    ganar[5] = true;
  }else{ganar[5] = false;}  
}