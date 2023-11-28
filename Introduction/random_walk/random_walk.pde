

Walker w;

void setup()
{
  size(640,360);
  noStroke();
  w = new Walker();
  background(255);
}

void draw()
{
  w.step();
  w.display();
}
