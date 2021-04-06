class KnapToggle extends Knap{

  boolean erValgt = false;
  
  
  KnapToggle(float x_, float y_, String tekst_) {
    
    super(x_, y_, tekst_);
    
  }
  
  void display() {
    
    if(erValgt)
      strokeWeight(sizeStrokeBig);
    else
      strokeWeight(sizeStroke);

    super.display();
    
  }
  
  void klikket(){
    
    if(dist(x+w/2,y+h/2,mouseX,mouseY)<50)
    erValgt = !erValgt;
    
  }
  
}
