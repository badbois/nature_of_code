import java.util.Random;

//---------------------------------fonctions--------------------------------------------

int generateRandomValue(float sd, float mean)
  {
    Random generator = new Random();
    float num = (float) generator.nextGaussian();
    return (int) (sd * num + mean) ;
  }

color generateRandomColor()
{
  int r = (int)random(255);
  int g = (int)random(255);
  int b = (int)random(255);
  int a = 255;
  return color(r,g,b,a);
}

//---------------------------------variables--------------------------------------------
final int nb_splatter = 5;


//---------------------------------setup--------------------------------------------

void setup() {
  size(640, 360); 
  noStroke();
  background(0);
  
    for(int i=0; i<nb_splatter; i++)
  {
    Splatter splatter = new Splatter();
    splatter.display();
  }

}
