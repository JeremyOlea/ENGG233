import javax.swing.JOptionPane;

void setup() {
  int n = 0;
  int seq = 1;
  int userInput;
  userInput = parseInt(JOptionPane.showInputDialog("Enter Number Greater Than 3")); //ask for input
  while (userInput < 3) 
    userInput = parseInt(JOptionPane.showInputDialog("Invalid Number: Enter Number Greater Than 3")); //if an invalid number is inputed
 
  while (seq < userInput) {
    int temp; //temporary number
    print(seq+ ",");
    temp = n; //saves value of n
    n=seq; 
    seq = temp + n;
  }
}