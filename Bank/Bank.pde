KnapToggle K10Kr = new KnapToggle(50, 50, 10, this);
KnapToggle K100Kr = new KnapToggle(200, 50, 100, this);
KnapToggle K1000Kr = new KnapToggle(350, 50, 1000, this);

Knap Deposit = new Knap(50, 250, "Deposit", this);
KontoFelt Penge = new KontoFelt(50, 350, "Dine penge:", this);

Knap[] knapper = new Knap[]{K10Kr, K100Kr, K1000Kr, Deposit};
KnapToggle[] Tknapper = new KnapToggle[]{K10Kr, K100Kr, K1000Kr};

void setup(){
  
  surface.setResizable(true);
  size(500,500);
  textAlign(CENTER);

}

void draw(){
  
  background(245);
  
  for(Knap a: knapper)
    a.display();
    
  Deposit.display();
  Penge.display();

}

void mouseClicked(){
  for(Knap a: knapper)
    a.klikket();
}

void addPenge(KontoFelt konto_) {
    
    for(KnapToggle a: Tknapper){  
    if(a.erValgt)    
    konto_.add(a.value);
    
  }}
