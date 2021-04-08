class Knap extends Komponent{
  
  boolean trykket;
  
  Knap(float x_, float y_, String tekst_,PApplet p) {
    
    super(x_, y_, tekst_,p);
    
  }
  
  void klikket(){
    
    if(abs(mouseX - (x+w/2)) < w/2 && abs(mouseY - (y+h/2)) < h/2) {
      klikFunktionalitet();
    }
  }
  
  void klikFunktionalitet(){
    addPenge(Penge);
  }

  
}
