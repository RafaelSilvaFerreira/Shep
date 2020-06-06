public class Sheep {
  private Position<Integer> pos;
  private int s;
  private color c;
  
  public Sheep(Position<Integer> pos, int s, color c) 
  {
    this.pos = pos;
    this.s = s;
    this.c = c;
  }
  
  public void render(int gs)
  {
    fill(this.c);
    noStroke();
    int x = this.pos.getX()*gs;
    int y = this.pos.getY()*gs;
    int size = this.s * gs;
    square(x,y,size);
  }
}
