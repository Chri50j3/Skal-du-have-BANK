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
  
  PApplet p;
  
  Komponent(float x_, float y_, String tekst_, PApplet p) {
    
    x = x_;
    y = y_;
    tekst = tekst_;
    
    tekstX = x + w / 2;
    tekstY = y + h / 2;
    
    this.p=p;
    
  }
  
  void display(){
    
    p.fill(colSec);
    p.stroke(colPri);
    p.rect(x, y, w, h);
    
    lavTekst();
  }
  
  void lavTekst() {
    
    p.fill(colPri);
    p.text(tekst, tekstX, tekstY);
  }
}
