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
    minute = m%60;
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
      today += 1;
      today = today%7;
      hour = 0;
      before_noon = !before_noon;
     
    }
    else if(hour == 11 && before_noon == true)
    {
      hour=0;
      before_noon = !before_noon;
     
    }
    else if(hour == 0)
    {
      hour = 1;
      
    }
    else
    hour++;
    
  }

  void addMinute()
  {
    if(minute == 59)
    {
      minute = 0;
      addhour();
      Control.TotalTime += 1;
    }
    else
    minute ++;
  }

  String toString()
  {
    String date = days[today];
    if (hour == 0)
      date += " 12";
    else if(hour < 10)
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
  
  boolean equal(Date d)
  {
    if(today != d.today)
    return false;
    if(hour != d.hour)
    return false;
    if(minute != d.minute)
    return false;
    if(before_noon != d.before_noon)
    return false;
    else
    return true;
  }
  
}