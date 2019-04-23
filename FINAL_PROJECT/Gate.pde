class Gate
{
  boolean status;
  float x;
  float y;
  float fee;

  Gate(boolean s, float f, float xcoord, float ycoord)
  {
    status = s;
    fee = f;
    x = xcoord;
    y = ycoord;
  }

void openGate() 
{
  status = true;
}

void closeGate() 
{
  status = false; 
}

  void drawGate()
  {
    if (status == true)
    {
      fill(0);
      line(x, y+148+2, x+28, y-20+148+2); //top gate
      line(x, y+297+148+54, x+28, y+277+148+58); //bot gate
    }

    if (status == false)
    {
      fill(0);
      line(x, y+148+2, x+36, y+148+2); //top gate
      line(x, y+297+148+54, x+28, y+277+148+54); //bot gate
    }
    Control.spaces = 0;
    for(int i=0; i<60; i++)
    {
      if(Occ[i] == false)
      Control.spaces +=1;
    }
 
    strokeWeight(4);
    stroke(0);
    fill(225);
    rect(220,80+153,100,20);      // top side text box
    fill(0,30,300);
    rect(220,100+153,100,20);
    
    fill(225);
    rect(220,390+153+40,100,20);
    fill(0,30,300);           // bot side text box
    rect(220,410+153+40,100,20);
    
    fill(0);
    textSize(14);
    text("ENTRANCE",230,95+153);  
    text("EXIT",230,405+153+40);
    text("Spaces:"+Control.spaces,230,115+153);
    text("Fee=$"+Control.price.fee,230,425+153+40);
    
  }
}