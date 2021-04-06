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
  
}
