void setup() {
  size(520, 520);
  int x = 10;
  int y =10;
  // sets parking stalls time of occupation
      Date ps1_date = new Date (3, 7, 6, true);
      
  for (int j=0; j<3; j++)
  {
    for (int i = 0; i < 10; i += 1)
    {
      ParkingStall ps1 = new ParkingStall(x, y, 50, 70);
      x += 50;
    
      //Increases minute randomly
      int randmin = (int)(random(0,6));
      for(int n=0; n <randmin;n++)
      ps1_date.addMinute();
      
      //Randomly chooses a taken Parking Stall
      int rand = (int)(random(0,2));
      if(rand == 0)
      ps1.setStatus(true, ps1_date);
      
      if(rand == 1)
      ps1.setStatus(false, ps1_date);
      
      ps1.drawStall();


      // displays the time stall occupied on the console
      if(ps1.occupied == true)
      println( "row " + (j+1) + " column " + (i+1) + " was occupied on: " + ps1.timeTaken);
    }
    y += 140;
    x = 10;
  }
}