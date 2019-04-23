//Angle in radians
float Angle = 0.02;

void setup() {
  size(600, 600);
}

void draw() 
{
  background(200);

   //Slope of trajectory
  float x = cos(Angle); 
  float y = sin(Angle);

   //Vertical and Horizontal stretch
  y *= -300;
  x *= -300;

   //Vertical and horizontal translations 
  x += 300;
  y += 600;

  fill(0);
  ellipse(x, y, 20, 20);

   //Update the location on trajectory
  Angle += 0.01;
}