import javax.swing.JOptionPane;
boolean is_leap_year(int y)
{
  boolean v = false;
  if(y%4 == 0 && y%100 != 0)
  v = true;
  else if (y%400 == 0 && y%100 == 0)
  v = true;
  
  return v;
   
}
void setup ()
{
 String answer = JOptionPane.showInputDialog("Enter a year or a negative number to quit");
 int year = Integer.parseInt(answer);
 while (year > 0) {
 boolean b = is_leap_year(year);
 if (b == true) {
 println( year + " is a leap year");
 }
 else
 println( year + " is Not a leap year");
 answer = JOptionPane.showInputDialog("Enter a year or a negative number to quite");
 year = Integer.parseInt(answer);
 }
}