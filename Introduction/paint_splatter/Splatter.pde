class Splatter 
{
    private int _x;
    private int _y;
    private color _c;
    private ArrayList<Dot> _dots;
    
    Splatter()
  {
    _x = generateRandomValue(width/6, width/2);
    _y = generateRandomValue(height/6,height/2);

    _c = generateRandomColor();
    _dots = new ArrayList<Dot>();
    addDots();
  }
  
  private void addDots()
  {
    for(int i=0; i<500; i++)
    {
      int x =  generateRandomValue(10, _x);
      int y = generateRandomValue(10, _y);
      
      _dots.add(new Dot(x,y));
    }
  }
  
  private void display()
  {
     fill(_c);
     for(Dot dot : _dots)
     {
       dot.display();
     }
  }
}
