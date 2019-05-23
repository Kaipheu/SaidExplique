class Boule{
  PVector Pos,Vst,Acc;
  float Rayon;
  color Couleur = 0;
  Boule(float R ){
    Rayon = R;
    Pos = new PVector(width/2,height*3/4);
    Vst = new PVector(0,0);
    Acc = new PVector(0,0);
  }
  
  void draw(){
    //C1.Bore(this);
    Vst.add(Acc);
    Pos.add(Vst);
    fill(Couleur);
    noStroke();
    ellipse(Pos.x,Pos.y,Rayon*2,Rayon*2);
    Acc.set(0,0);
  }
  
  Boule AjoutAcc(PVector Autre){
    Acc.add(Autre);  
    return this;
  }
  Boule AjoutAccX(float X){
    Acc.add(X,0);
    return this;
  }
  Boule AjoutAccY(float Y){
    Acc.add(0,Y);
    println("Ajout Y : "+Acc);
    return this;
  }
  Boule DefVst(float X,float Y){
    Vst.set(X,Y);
    return this;
  }
  Boule DefVst(PVector Vst){
    Vst.set(Vst);
    return this;
  }
  Boule DefAcc(float X,float Y){
    Acc.set(X,Y);
    return this;
  }
  Boule DefAcc(PVector Acc){
    Acc.set(Acc);
    return this;
  }
  void RAZ(){
    Pos.set(width/2,height/2);
    Vst.set(0,0);
    Acc.set(0,0);
  }
}
