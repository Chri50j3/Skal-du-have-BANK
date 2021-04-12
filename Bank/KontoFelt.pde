class KontoFelt extends Komponent{
  
  float tekstYOffset;
  
  KontoFelt(float x_, float y_, String tekst_, PApplet p) {
    
    super(x_, y_, tekst_, p);
    
    tekstYOffset = h * 0.4f;
    tekstY = y + tekstYOffset;
  }
  
  int balance;

  void lavTekst() {
    
    super.lavTekst();
    p.text(balance + "kr", tekstX, tekstY + tekstYOffset);
    
  }

}
