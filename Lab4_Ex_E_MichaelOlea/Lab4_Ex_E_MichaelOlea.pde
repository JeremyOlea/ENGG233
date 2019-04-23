
size(400,400);

for(int x=0; x< 400; x += 20) {
  
  for(int y = 0; y < 400; y+= 20)
  {
    if ( x == y || x == 380 -y)
    fill(0);
    else
    fill(255);
    
    
    if(x + 20 > y)
    rect(x,y,20,20);
  }
}