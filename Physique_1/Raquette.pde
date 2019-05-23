class Raquette{
  PVector PosSourie0 = new PVector();
  PVector PosSourie1 = new PVector();
  Raquette(){
    PosSourie1 = new PVector(0,0);
    PosSourie0 = new PVector(0,0);    
  }
  
  void draw(){
    if(mousePressed){
      R1.mouseDragged();
      }
  }
  void mousePressed (){
    PosSourie0.set(mouseX,mouseY);
  }
  void mouseDragged(){
    PosSourie1.set(mouseX,mouseY);
    stroke(0);
    line(PosSourie0.x,PosSourie0.y,PosSourie1.x,PosSourie1.y);
  }
  
  void mouseReleased(){
    PosSourie1.set(mouseX,mouseY);
    PVector Resutante = PVector.sub(PosSourie0,PosSourie1);
    Resutante.div(10);
    Resutante.mult(Grt);
    //println("Resultante : "+ Resutante);
    B1.AjoutAcc(Resutante);
    
  }
}
