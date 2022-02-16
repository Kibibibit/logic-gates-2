public interface UpdateEntity {

  public abstract void update();
  public abstract void onPressed();
  public abstract void onDragged();
  public abstract void onReleased();
  
  public boolean inBounds(float x, float y);
 
}
