class Walker {
  
  //position
  private float x;
  private float y;
  
  //noise variable
  private float tx;
  private float ty;
  
  //color
  private color c;
  
  Walker()
  {
    x = width/2;
    y = height/2;
    
    tx=0;
    ty=10000;
    c = color(0);
  }
  
  void display()
  {
    computeColor();
    float size = map(noise(tx/ty), 0, 1, 2, 5); 
    circle(x,y, size);
  }
  
  
  void step()
  {
     x = map(noise(tx), 0, 1, 0, width); 
     y = map(noise(ty), 0, 1, 0, height);
     
     tx +=0.01;
     ty +=0.01;
  }
  
  void computeColor()
  {
    int r = (int) map(noise(tx), 0, 1, 0, 255);
    int g = (int) map(noise(ty), 0, 1, 0, 255);
    int b = (int) map(noise(ty+tx), 0, 1, 0, 255);
    c = color(r,g,b);
    fill(c);
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
