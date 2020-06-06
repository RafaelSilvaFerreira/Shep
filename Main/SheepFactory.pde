public class SheepFactory
{
  public Sheep[] buildHerd(int herdLength, int spread)
  {
    if (herdLength <= 1) return null;
    
    Position<Integer>[] positionHistory = new Position[herdLength];
    Sheep[] herd = new Sheep[herdLength];
    
    int x = floor(random(0, width-gs)/gs);
    int y = floor(random(0, height-gs)/gs);
    Position<Integer> basePosition = new Position<Integer>(x, y);
    positionHistory[0] = basePosition;
    herd[0] = new Sheep(basePosition, 1, color(255));
    
    for(int i=1; i < herdLength; i++)
    {
      while(true)
      {
        x = floor(random(positionHistory[i-1].getX()-spread, positionHistory[i-1].getX()+spread));
        y = floor(random(positionHistory[i-1].getY()-spread, positionHistory[i-1].getY()+spread));
        
        if ((x < 0 || x > width -gs) || (y < 0 || y > height -gs)) continue;
        
        Position<Integer> attempt = new Position<Integer>(x, y);
        Boolean original = true;
        for(Position position: positionHistory)
        {
          if (position != null){
              if (attempt.getX() == position.getX() &&
                  attempt.getY() == position.getY())
              {
                original = false;
                break;
              }
          } else break;
        }

        if (original) {
          positionHistory[i] = attempt;
          break;
        }
      }
      herd[i] = new Sheep(positionHistory[i], 1, color(255));
    }
    
    return herd;
  }
}
