class Dot
{
  private int _x;
  private int _y;
  
  Dot(int x, int y)
  {
    _x = x;
    _y = y;
  }
  
  private void display()
  {
    circle(_x,_y,generateRandomValue(5, 20));
  }
}
