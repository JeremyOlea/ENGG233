Carlist C1 = new Carlist(2, 5, 169);
ControlPanel Control = new ControlPanel(1, 0, 0, true);
boolean [] Occ = new boolean [60];

void setup()
{
  background(#2E9506);
  size(700, 700);
  Control.price = new PriceCalculator(0, 0);
}
void draw()
{
  //parking lot , parking stall section & parking stall
  ParkingLot z = new ParkingLot(600, 350);
  z.drawLot();

  //street
  Street s0 = new Street("North Street", 200, 200);
  Street s1 = new Street("South Street", 350, 660);
  s0.drawStreet();
  s1.drawStreet();

  //gate
  Gate G1 = new Gate(true, 0, 330, 100);
  if (Control.spaces == 0)
    G1.closeGate();
  else
    G1.openGate();

  G1.drawGate();

  //Car
  C1.drawCarlist();

  //Control Panel
  Control.drawPanel();
  Control.CurrentTime.addMinute();
  
  Control.price.drawPriceDisplay();
  Control.price.setFee(Control.CurrentTime);
 // println(mouseX,mouseY);
}

void mousePressed() 
{
  if(mouseX > 20 && mouseX < 183 && mouseY > 48 && mouseY < 90)
  {
  if(looping)
  noLoop();
  else
  loop();
  }
}