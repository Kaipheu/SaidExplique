Boule B1;
short Cpt = 0;

void setup(){
  size(600,400); //<>//
  B1 = new Boule(25);
  B1.Pos.set(width/2,height*1/4);
}

void draw(){ //<>//
    background(255);
    B1.draw(); //<>//
    
    println("--");
}

void keyPressed(){
  save("Image"+Cpt+".png");
  Cpt ++;
}
