KnapToggle K10Kr = new KnapToggle(50, 50, 10);
KnapToggle K100Kr = new KnapToggle(200, 50, 100);
KnapToggle K1000Kr = new KnapToggle(350, 50, 1000);

Knap Deposit = new Knap(50, 250, "Deposit");
KontoFelt Penge = new KontoFelt(50, 350, "Dine penge:");

Knap[] knapper = new Knap[]{K10Kr, K100Kr, K1000Kr, Deposit};

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
