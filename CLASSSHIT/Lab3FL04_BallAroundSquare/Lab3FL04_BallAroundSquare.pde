int x = 50;
int y = 50;
int x_dir = 5;
int y_dir = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(180);
  fill(#009FFF);
  ellipse(x, y, 100, 100);
  if (x == 550 && y == 50) {
    x_dir = 0;
    y_dir = 5;
  } else if ( x == 550 && y == 550) {
    x_dir = -5;
    y_dir = 0;
  }
  else if(x == 50 && y == 550) {
    x_dir = 0;
    y_dir = -5;
  }
  else if( x == 50 && y == 50) {
  x_dir = 5;
  y_dir = 0;
}

    x+=x_dir;
    y+=y_dir;
  }