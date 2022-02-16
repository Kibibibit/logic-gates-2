
public abstract class Entity {
  
  private Vector pos;
  
  public Entity(float x, float y) {
     this.pos = new Vector(x,y); 
  }
  
  public Entity(Vector pos) {
     this(pos.x(),pos.y()); 
  }
  
  
  public Vector getPos() {
    return this.pos; 
  }
  
  public void setPos(Vector pos) {
    this.setX(pos.x());
    this.setY(pos.y());
    
  }
  
  public float x() {
   return this.pos.x(); 
  }
  
  public float y() {
    return this.pos.y(); 
  }
  
  public void setX(float x) {
    this.pos.setX(x); 
  }
  
  public void setY(float y) {
    this.pos.setY(y); 
  }
 
  
}
