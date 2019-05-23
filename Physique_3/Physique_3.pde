Boule B1,B2,B3;
Colission C1;
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
  C1 = new Colission();
  R1 = new Raquette();
  B2.Pos.set(width/2,height/2);
  B1.Pos.set(width/2,height*1/4);
  B1.Vst.set(10,0);
}

void draw(){ //<>//
    background(153,217,234);
    C1.Atraction(B1,B2);
    R1.draw();
    B1.draw(); //<>//
    B2.draw();
    if(millis() % 5 == 0){
        save("Image"+Cpt+".png");
      Cpt ++;
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
