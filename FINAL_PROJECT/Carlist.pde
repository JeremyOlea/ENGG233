class Carlist
{
  Car [] CarArr;  

  Carlist(float q, float w, float e)
  {
    CarArr = new Car[1000];
    for (int i = 0, dist = 0; i < 1000; i++)
    {
      CarArr[i] = new Car(q, w - dist, e);
      dist += 120;
      int Parking = (int)(random(0, 3));
      if (Parking == 1)
        CarArr[i].Park = true;
      else
        CarArr[i].Park = false;
    }
  }

  void drawCarlist()
  {
    for (int i=0; i<1000; i++)
    {
      CarArr[i].drawCar();
      CarArr[i].moveCar();
    }
  }
}