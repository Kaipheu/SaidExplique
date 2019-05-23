Boule B1,B2,B3;

Raquette R1;
public float Grt = 0.5;
PVector Resistance = new PVector(0,0);
boolean Affiche = true;
short Cpt = 0;
static float F = 0.05;
void setup(){
  size(640,360); //<>//
  B1 = new Boule(10);
  B2 = new Boule(25);
  R1 = new Raquette();
  B2.Pos.set(width/2,height/2);
  B1.Pos.set(width/2,height*1/4);
  B1.Vst.set(10,0);
}

void draw(){ //<>//
    background(153,217,234);
    Atraction(B1,B2);
    R1.draw();
    B1.draw(); //<>//
    B2.draw();
    if(millis() % 5 == 0){
        save("Image"+Cpt+".png");
      Cpt ++;
    }
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
void mousePressed (){
  R1.mousePressed();
}
void mouseDragged(){
  R1.mouseDragged();
}
void mouseMoved(){
  
}
void mouseReleased(){
  R1.mouseReleased();
}
void keyPressed(){
  println("KEY "+key);
  switch(key){
    case ' ':
      B1.RAZ();
    break;
    case'e':
      background(255);
    break;
    
    case's':
      save("Image"+Cpt+".png");
      Cpt ++;
    break;
  }
}
