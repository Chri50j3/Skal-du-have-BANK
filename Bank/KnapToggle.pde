class KnapToggle extends Knap{

  boolean erValgt = false;
  int value;
  
  float sizeStrokeBig = 5;
  
  KnapToggle(float x_, float y_, int value_) {
    
    super(x_, y_, value_ + "kr");
    
    value = value_;
    
  }
  
  void display() {
    
    if(erValgt)
      strokeWeight(sizeStrokeBig);
    else
      strokeWeight(sizeStroke);

    super.display();
    
    strokeWeight(sizeStroke);
  }
  
  void klikket(){
    
    if(dist(x + w / 2, y + h / 2, mouseX ,mouseY) < 50)
    erValgt = !erValgt;
    
  }
  
  void addPenge(KontoFelt konto_) {
    
    if(!erValgt)
      return;
      
    konto_.add(value);
    
  }
  
}
