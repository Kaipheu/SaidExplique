class Raquette{
  PVector[] PosSourie = new PVector[2];
  Raquette(){
    PosSourie[1] = new PVector(0,0);
    PosSourie[0] = new PVector(0,0);    
  }
  
  void draw(){
    if(mousePressed){
      R1.mouseDragged();
      }
  }
  void mousePressed (){
    PosSourie[0].set(mouseX,mouseY);
  }
  void mouseDragged(){
    
    PosSourie[1].set(mouseX,mouseY);
    stroke(255);
    line(PosSourie[0].x,PosSourie[0].y,PosSourie[1].x,PosSourie[1].y);
  }
  void mouseReleased(){
    PosSourie[1].set(mouseX,mouseY);
    PVector Resutante = PVector.sub(PosSourie[0],PosSourie[1]);
    Resutante.div(10);
    Resutante.mult(Grt);
    //println("Resultante : "+ Resutante);
    B1.AjoutAcc(Resutante);
    
  }
}
