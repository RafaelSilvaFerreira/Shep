public class Position<T>
{
  private T x;
  private T y;
  public Position(T x, T y)
  {
    this.x = x;
    this.y = y;
  }
  
  public T getX()
  {
    return this.x;
  }
  
  public T getY()
  {
    return this.y;
  }
}
