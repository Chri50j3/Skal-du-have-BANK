class Knap extends Komponent{
  
  boolean trykket;
  
  Knap(float x_, float y_, String tekst_) {
    
    super(x_, y_, tekst_);
    
  }
  
  void klikket(){
    
    if(dist(x + w / 2, y + h / 2, mouseX ,mouseY) < 50) {
      K10Kr.addPenge(Penge);
      K100Kr.addPenge(Penge);
      K1000Kr.addPenge(Penge);
    }
    
  }
}
