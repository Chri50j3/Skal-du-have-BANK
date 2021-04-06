class Komponent {
  
  float x,y;
  String tekst;
  
  float w = 100;
  float h = 50;
  float tekstX;
  float tekstY;
  color colPri = color(200, 0, 0);
  color colSec = color(200);
  float sizeStroke = 1;
  float sizeStrokeBig = 5;
  
  Komponent(float x_, float y_, String tekst_) {
    
    x = x_;
    y = y_;
    tekst = tekst_;
    
    tekstX = x + w / 2;
    tekstY = y + h / 2;
    
  }
  
  void display(){
    
    fill(colSec);
    stroke(colPri);
    rect(x, y, w, h);
    
    lavTekst();
  }
  
  void lavTekst() {
    
    fill(colPri);
    text(tekst, tekstX, tekstY);
  }
}
