class Car
{ 
  float speed;
  float x;
  float y;
  boolean Park;
  int ParkSlot;
  Date EntryTime;
  Date ExitTime;
  color c;

  Car(float q, float w, float e)
  {
    speed = q;
    x = w;
    y= e;
    c = color (random(0,250),random(0,250),random(0,250));
  }


  void moveCar()
  {
    if (x != 337 && y == 169)
      x += speed;
    else if (x == 337 && Park == true && y < 500 && Control.spaces != 0)
    {
      y+= speed;
      if (y==267)
      {
        x =-40;
        y =-40;
        speed =0;
        while (speed == 0)
        {
          int randPark = (int)(random(0, 60));
          if (Occ[randPark] != true)
          {
            Occ[randPark] = true;
            ParkSlot = randPark;
            EntryTime = new Date(Control.CurrentTime);
            int t = (int)(random(1, 13));
            ExitTime = new Date(Control.CurrentTime);
            for(int i=0; i<t; i++)
            {
              ExitTime.addhour();
            }
            Control.Customers +=1;
            break;
          }
        }
      }
    } 
    else if (x != -40 && y < 500)
      x += speed;
      

    if ( x == -40 && Control.CurrentTime.equal(ExitTime))
    {
      Occ[ParkSlot] = false;
      x = 337;
      y = 557;
      Control.price.fee = Control.price.Calculatefee(EntryTime,ExitTime);
   println("Time of Entry: "+EntryTime);
   println("Time of Exit: "+ExitTime);
   println("Fee: $"+Control.price.fee);
   println("----------------");
   
    }
    if(y>556 && y <640)
    {
      speed = 2;
      y+=speed;
    }
    else if(y==641)
    x+=speed;
    
    
  }

  void drawCar()
  {
     if(Park == true && x == 337)
    {
    fill(c);
    rect(x, y, 25, 35);
    }
    else
    {
    fill(c);
    rect(x, y, 35, 25);
    }
   
  }
}