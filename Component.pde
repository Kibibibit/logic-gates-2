
public abstract class Component extends DrawEntity implements UpdateEntity {
  
  private DrawEntity shape;
  
  
  
  public Component(DrawEntity shape) {
   super(shape.x(),shape.y());
   
   this.shape = shape;
  }
  
  
  public DrawEntity getShape() {
    return this.shape; 
  }
  
  public void setShape(DrawEntity shape) {
    this.shape = shape; 
  }
  
  public boolean inBounds(float x, float y) {
    return this.shape.inBounds(x,y); 
  }
  
  
  
  
  
}
