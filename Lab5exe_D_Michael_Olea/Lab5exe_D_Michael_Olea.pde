import javax.swing.JOptionPane;

  int count_lowercases(String s) 
{
int lower_case = 0;
for(int p = 0; p < s.length(); p++) //loop to check for each character in a string
{
  if (s.charAt((int)p) <= 122 && s.charAt((int)p) >= 97) //ascii range for lowercase letters
  {
    lower_case++;
  }
}

return lower_case;
}

  void setup () {
    String str;

    str = JOptionPane.showInputDialog("Enter a string");
    //prompt the user for a string
    int count = count_lowercases(str);
    println(str);
    println(count);
  }