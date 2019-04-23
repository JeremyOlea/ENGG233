class ControlPanel
{
 Date CurrentTime;
 int spaces;
 PriceCalculator price;
 float netProfit;
 int TotalTime;
 int Customers;
 
 ControlPanel(int d, int h, int m, boolean s)
 {
   CurrentTime = new Date (d,h,m,s);
   netProfit = 0;
   TotalTime = 0;
   Customers = 0;
 }
  
  void drawPanel()
  {
    
    // Time Display
    String display;
    display = CurrentTime.toString();
    fill(225);
    rect(16,5,175,30);
    fill(0);
    text(display,20,20);
    
    // Play & Pause Button
    fill(225);
    rect(16,44,175,50);
    fill(0);
    textSize(18);
    text("Play/Pause",50,75);
    
    //Simulation Values
    fill(225);
    rect(206,5,220,130);
    fill(0);
    textSize(18);
    text("Simulation Values",220,30);
    textSize(14);
    text("Net Profit                  $"+netProfit,220,60);
    text("Time Elapsed              "+Control.TotalTime+"h",220,90);
    text("Customers                  "+Customers,220,120);
    
    
    
  }
}