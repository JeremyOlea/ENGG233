class PriceCalculator
{
  Date clock;
  float hourly;
  int Hourselapsed, Minutelapsed;
  int totalcars;
  float fee;
  PriceCalculator(int h, int m)
  {
    clock = new Date (0, 0, 0, true);
    Hourselapsed = Minutelapsed = 0;
    float Inputhour = h;
    float Inputminute = m;
  }
  float Calculatefee(Date Parkingtime_entry, Date Parkingtime_exit)
  {
    float Fee;
    if (Parkingtime_exit.before_noon == Parkingtime_entry.before_noon && Parkingtime_exit.hour != 0)
      Fee = (Parkingtime_exit.hour-Parkingtime_entry.hour)*hourly;
    else if (Parkingtime_exit.before_noon != Parkingtime_entry.before_noon)
      Fee = (abs(-1*(Parkingtime_exit.hour-Parkingtime_entry.hour)-12))*hourly;
    else
      Fee = (12-Parkingtime_entry.hour)*hourly;

    Control.netProfit += Fee;
    return Fee;
  }
  void setFee(Date Parkingtime)
  {
    if (Parkingtime.today < 6)
      hourly = 3.00;
    else
      hourly = 1.5;
  }
  void drawPriceDisplay()
  {
    fill (225);
    stroke(200);
    rect (444, 5, 200, 100);
    fill(0);
    textSize(20);
    text ("Hourly Fees:", 459, 25);
    textSize(12);
    text("Monday - Saturday:", 459, 40);
    text("$3.00/hour", 464, 55);
    text("Sunday:", 459, 70);
    text("$1.50/hour", 464, 85);
  }
}