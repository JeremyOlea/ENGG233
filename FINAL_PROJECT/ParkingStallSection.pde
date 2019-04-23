class ParkingStallSection
{
  ParkingStall [] stall_list;

  float x, y;
  int r, c;

  ParkingStallSection(int r, int c, float x, float y, float h, float w,int o)
  {

    stall_list = new ParkingStall[r*c]; // code is not done we need to create each object in the array
    for (int j=0, dist = 0; j<r*c; j++, dist += w)
    {
      ParkingStall STALL = new ParkingStall(0, 0, 0, 0);
      if (j==c)
      {
        dist =0;
        y+=h;
      }
      STALL.posX = x + dist;
      STALL.posY = y;
      STALL.stallWidth = w;
      STALL.stallHeight = h;
      stall_list[j] = STALL;
      
       stall_list[j].setStatus(Occ[j+o*10],Control.CurrentTime);
 
    }
   
   
  }

  void draw_section()
  {
    for (int i = 0; i<stall_list.length; i++)
    {
      stall_list[i].drawStall();
    }
    
  }
}