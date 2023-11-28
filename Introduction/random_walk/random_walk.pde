class Walker {
  private int x;
  private int y;
  private color c;
  Walker()
  {
    x = width/2;
    y = height/2;
    c = color(255/2, 255/2, 0);
  }
  
  void display()
  {
    computeColor();
    point(x,y);
  }
  
  void stepFourDirection()
  {
    int choice = int(random(4));
    switch(choice) {
      case 0:
        x++;
        break;
      case 1:
        x--;
        break;
      case 2:
        y++;
        break;
      case 3:
        y--;
        break;
      default:
        break;
    }
  }
  
  void integerStep()
  {
     int stepx = int(random(3))-1;
     int stepy = int(random(3))-1;
     x += stepx;
     y += stepy;
  }
  
  void computeColor()
  {
    int r = x*255/width;
    int v = y*255/height;
    c = color(r,v,0);
    stroke(c);
  }
}

Walker w;

void setup()
{
  size(640,360);
  w = new Walker();
  background(255);
}

void draw()
{
  w.integerStep();
  w.display();
}
