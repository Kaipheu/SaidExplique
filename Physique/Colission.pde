class Colission {
  float CoefBore = -2;
  
  Colission() {
  }

void Atraction(Boule B1,Boule B2){
  float Dist = PVector.dist(B1.Pos,B2.Pos);
  if(Dist-B2.Rayon >=0){
  PVector G = new PVector();
  G.set(B1.Pos);
  G.sub(B2.Pos);
  G.setMag(5000*(-1/sq(Dist)));
  G.setMag(constrain(G.mag(),1,5));
  println("G : ",G.mag());
  B1.AjoutAcc(G);
  }
}
  void Bore(Boule Autre) {
    if (Autre.Pos.x+Autre.Rayon >= width) {
      Autre.AjoutAccX(Autre.Vst.x*CoefBore);
      Autre.Pos.set(width-Autre.Rayon-2,Autre.Pos.y);
    }
    if (Autre.Pos.x-Autre.Rayon <= 0 ) {
      Autre.AjoutAccX(Autre.Vst.x*CoefBore);
      Autre.Pos.set(Autre.Rayon+2,Autre.Pos.y);
    }
    if (Autre.Pos.y+Autre.Rayon >= height) {
      Autre.AjoutAccY(Autre.Vst.y*CoefBore);
      Autre.Pos.set(Autre.Pos.x,height-Autre.Rayon-2);
    }
    if (Autre.Pos.y-Autre.Rayon <= 0 ) {
      Autre.AjoutAccY(Autre.Vst.y*CoefBore);
      Autre.Pos.set(Autre.Pos.x,Autre.Rayon+2);
    }
    
  }

  void Gravite(Boule Autre) {
    Autre.AjoutAccY(Grt);
  }
}
