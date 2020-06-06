public static final int gs = 20;
public SheepFactory sheepFactory;
public Sheep[] herd;

void setup()
{  
  size(800, 600);
  background(0, 100, 0);
  sheepFactory = new SheepFactory();
  herd = sheepFactory.buildHerd(5, 5);
}

void draw()
{
  for(Sheep sheep: herd)
  {
    sheep.render(gs);
  }
}
