class Date 
{
  final String[] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
  int today;
  int hour;
  int minute;
  boolean before_noon;

  Date(int d, int h, int m, boolean beforeNoon)
  {
    today = d%7;
    hour = h%12;
    minute = m%61;
    before_noon = beforeNoon;
  } 
  Date(Date d)
  {
    today = d.today;
    hour = d.hour;
    minute = d.minute;
    before_noon = d.before_noon;
  }

  void addhour()
  {
    if(hour == 11 && before_noon == false)
    {
      hour += 1;
      before_noon = !before_noon;
      today += 1;
    }
    else if (hour == 11 && before_noon == true)
    {
      hour += 1;
     before_noon = !before_noon;
    }
    else
      hour += 1;
  }

  void addMinute()
  {
    if (minute == 59 && hour == 11 && before_noon == false) 
    {
      hour += 1;
      minute = 0;
      before_noon = !before_noon;
      today += 1;
      
    }
    else if(minute == 59 && hour == 11 && before_noon == true)
    {
      hour += 1;
      minute = 0;
      before_noon = !before_noon;
    }
    else if( hour == 12 && minute == 59)
    {
    hour = 1;
    minute = 0;
    }
    else if( minute == 59)
    {
      hour += 1;
      minute =0;
    }
    else
    {
      minute += 1;
    }
  }

  String toString()
  {
    String date = days[today];
    if (hour < 10)
      date += " 0" + hour;
    else
      date += " " + hour;

    if (minute < 10)
      date += ":0" +minute;
    else
      date += ":" + minute;

    if (before_noon)
      date += "AM";
    else
      date += "PM";
    return date;
  }
}

void setup() 
{
  Date mydate;
  mydate = new Date(5, 12, 56, false);
  for (int i =0; i<5; i++)
  {
    mydate.addMinute();
    println(mydate);
  }

  mydate = new Date (11, 12, 56, true);
  for ( int i=0; i<5; i++) 
  {
    mydate.addhour();
    println(mydate);
  }

  Date d1 = new Date(3, 4, 5, true);
  Date d2 = new Date(d1);

  if (d1.equals(d2)) 
    println(d1 + " and " + d2 + " are equal...");
  else
    println(d1 + " and " + d2 + " are not equal...");

  d2.addhour();

  if (d1.equals(d2)) 
    println(d1 + " and " + d2 + " are equal...");
  else
    println(d1 + " and " + d2 + " are not equal...");
}