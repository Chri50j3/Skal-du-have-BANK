class KnapToggle extends Knap{

  boolean erValgt = false;
  int value;
  
  float sizeStrokeBig = 5;
  
  KnapToggle(float x_, float y_, int value_, PApplet p) {
    
    super(x_, y_, value_ + "kr", p);
    
    value = value_;
  }
  
  KnapToggle(float x_, float y_, PApplet p) {
    
    super(x_, y_, "Ikke intastet", p);
  }
  
  void display() {
    
    if(erValgt)
      p.strokeWeight(sizeStrokeBig);
    else
      p.strokeWeight(sizeStroke);

    super.display();
    
    p.strokeWeight(sizeStroke);
  }
  
  void klikFunktionalitet(){
    erValgt = !erValgt;
  }
}
