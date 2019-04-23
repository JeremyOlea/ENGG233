import javax.swing.JOptionPane;
void setup () {
  int max, column, x = 20, y = 20, row, value,n;
  size (500, 500);
  background(0);
  do {
    String answer = JOptionPane.showInputDialog("How many rows would you like in your times table?"+
      "\nEnter a number between 1 and 16.");
    max = Integer.parseInt(answer);
  } while (max < 1 || max >16);

  text("X", x, y);
  x += 50;

    for (column = 1,row=1,value = 1; column <= max; column++,row++) {
      text ( Integer.toString(column), x, 20); //display header
      x +=50;
        
      text( Integer.toString(row), 20, y+50); //display rows
      y += 50;
    
  }
  
  for(column = 1,y=20; column <= max; column++){
    x = 20;
   for(row = 1,value = 0;row <= column; row++){ 
    value = row*column;
    text ( Integer.toString(value), x+50, y+50);
    x+= 50;
   }
   y+=50;
  }
    
    
}