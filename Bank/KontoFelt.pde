class KontoFelt extends Komponent{
  
  float tekstYOffset;
  
  KontoFelt(float x_, float y_, String tekst_) {
    
    super(x_, y_, tekst_);
    
    tekstYOffset = h * 0.4f;
    tekstY = y + tekstYOffset;
  }
  
  int balance;

  void add(float V_ind){
    balance += V_ind;
  }

  void lavTekst() {
    
    super.lavTekst();
    text(balance + "kr", tekstX, tekstY + tekstYOffset);
    
  }

}
