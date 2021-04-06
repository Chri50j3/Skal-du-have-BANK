KnapToggle K10Kr = new KnapToggle();
KnapToggle K100Kr = new KnapToggle();
KnapToggle K1000Kr = new KnapToggle();

Knap Deposit = new KnapToggle();
KontoFelt Penge = new KontoFelt();

void setup(){
  surface.setResizable(true);
  size(1920,1080);
}

void draw(){
background(245);
K10Kr.display();
K100Kr.display();
K1000Kr.display();
Deposit.display();
Penge.display();
}

class Komponent{
  float x,y,w,h;
  String tekst;

void display(){}
}

class KontoFelt extends Komponent{
  float balance;

  void add(float V_ind){
    balance += V_ind;
  }
}

class Knap extends Komponent{
  boolean trykket;
}

class KnapToggle extends Knap{

}
