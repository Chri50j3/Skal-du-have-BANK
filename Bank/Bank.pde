KnapToggle K10Kr = new KnapToggle(50, 50, 10, this);
KnapToggle K100Kr = new KnapToggle(200, 50, 100, this);
KnapToggle K1000Kr = new KnapToggle(350, 50, 1000, this);

KnapToggle KInput = new KnapToggle(350, 150, this);
String input = "     ";

Knap Deposit = new Knap(50, 250, "Deposit", this);
KontoFelt Penge = new KontoFelt(50, 350, "Dine penge:", this);

Knap[] knapper = new Knap[]{K10Kr, K100Kr, K1000Kr, KInput, Deposit};
KnapToggle[] Tknapper = new KnapToggle[]{K10Kr, K100Kr, K1000Kr, KInput};

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

void aktiver() {
    
  for(KnapToggle a: Tknapper){  
    if(a.erValgt)
      Penge.balance += a.value;
  }
}

void keyPressed() {
  
  if(!KInput.erValgt)
  return;
  
  if(key == '0' || key == '1' || key == '2' || key == '3' || key == '4' ||
     key == '5' || key == '6' || key == '7' || key == '8' || key == '9')
    input += key;
  
  if(keyCode == BACKSPACE && input.length() > 0) {
    String tempInput = "";
    for(int i = 0; i < input.length() - 1; i++)
      tempInput += input.charAt(i);
    input = tempInput;
  }
  
  KInput.tekst = input;
  try{
    KInput.value = (int)Float.parseFloat(input);
  }
  catch(Exception e) {
    KInput.value = 0;
  }
  
  println(KInput.value);
}
