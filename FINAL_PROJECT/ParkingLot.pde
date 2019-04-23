class ParkingLot
{
  ParkingStallSection[] section_list;
  //dimensions
  float x;
  float y;
  float l; 
  float w;


  ParkingLot(float len, float wid)
  {
    section_list = new ParkingStallSection[6];
    x = (width/2)-(len/2); //100
    y = (height/2)-(wid/2)+75; //100
    l = len;
    w = wid;

    float tempy = y + (w/12);
    float tempx = x + 0.5*(l/12);
    for (int n = 0; n<6; n++)
    {

      section_list[n] = new ParkingStallSection(2, 5, tempx, tempy, w/11, l/12,n);
      tempy += (w/12)*4;
      if (n==2)
      {
        tempy = y + (w/12);
        tempx = tempx + 6*(l/12) ;
      }
    }
  }







  void drawLot() 
  {



    fill(#474B46);
    strokeWeight(4);
    stroke(255);
    rect(x, y, l, w);
    strokeWeight(1);
    for (int i = 0; i<section_list.length; i++)
    {
      section_list[i].draw_section();
    }
  }
}