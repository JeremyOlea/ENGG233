class Street 
{
  String name;
  
  float x,y;

  Street(String n,float xcoord, float ycoord)
  {
    name = n;
    x = xcoord;
    y = ycoord;
  }


  void drawStreet()
  {
    fill(#474B46);
    strokeWeight(4);
    stroke(255);
 
    if(y < height/2)
    {
    rect(-2, 145, width+50, 83); // top street
    rect(328,231,42,16.6); // top boarders
    }
    
    else if ( y > height/2)
    {
    rect(328,height-100,42,16.6); // bot boarders
    rect(-2,height-83+1, width+50, 83); // bot street
    }
    
    noStroke();
    rect(330,226,39,27); // no boarders top
    rect(330,598,39,25); //no boarders bot
    
    stroke(1);
    
    textSize(20);
    fill(255);
    text(name,x,y);
    
    
    
  }
  
}