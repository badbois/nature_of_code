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
    circle(x,y, 2);
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
     int stepsize= randomStepSize();
    
     int stepx = int(random(-stepsize, stepsize));
     int stepy = int(random(-stepsize, stepsize));
     int tmp_x = x+stepx;
     int tmp_y = y+stepy;
     
     x = (tmp_x) > width ? width : (tmp_x) < 0 ? 0 : tmp_x;
     y = (tmp_y) > height ? height : (tmp_y) <0 ? 0 : tmp_y;
  }
  
  void computeColor()
  {
    int r = x*255/width;
    int v = y*255/height;
    c = color(r,v,0);
    stroke(c);
  }
}

int randomStepSize()
{
  while(true)
  {
    float r1 = random(10);
    float p1 = r1;
    float r2 = random(10);
    
    if(r2 < p1)
    {
      return int(r1);
    }
  }
}
