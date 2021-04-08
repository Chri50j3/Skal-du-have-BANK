class Knap extends Komponent{
  
  boolean trykket;
  
  Knap(float x_, float y_, String tekst_) {
    
    super(x_, y_, tekst_);
    
  }
  
  void klikket(){
    
    if(abs(mouseX - x) < w && abs(mouseY - y) < h) {
      klikFunktionalitet();
    }
    
  }
  
  void klikFunktionalitet(){
      K10Kr.addPenge(Penge);
      K100Kr.addPenge(Penge);
      K1000Kr.addPenge(Penge);
  }
}
