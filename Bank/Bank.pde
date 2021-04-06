ArrayList<KnapToggle> knapper = new ArrayList<KnapToggle>();

KnapToggle K10Kr = new KnapToggle(50, 50, "10kr");
KnapToggle K100Kr = new KnapToggle(200, 50, "100kr");
KnapToggle K1000Kr = new KnapToggle(350, 50, "1000kr");

Knap Deposit = new KnapToggle(50, 250, "Deposit");
KontoFelt Penge = new KontoFelt(50, 350, "Dine penge:");

void setup(){
  
  surface.setResizable(true);
  size(500,500);
  textAlign(CENTER);

  knapper.add(K10Kr);
  knapper.add(K100Kr);
  knapper.add(K1000Kr);

}

void draw(){
  
  background(245);
  
  K10Kr.display();
  K100Kr.display();
  K1000Kr.display();
  Deposit.display();
  Penge.display();

}

void mouseClicked(){
  for(KnapToggle a: knapper)
  a.klikket();
}
