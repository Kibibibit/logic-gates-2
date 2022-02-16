
public class Box extends DrawEntity {
 
  private Vector size;
  
  public Box(float x, float y, float w, float h) {
    super(x,y);
    this.size = new Vector(w,h);
  }
  
  
  public Box(Vector pos, Vector size) {
    super(pos);
    this.size = size.clone();
  }
  
  
  @Override
  protected void onDraw() {
    rect(this.x(),this.y(),this.w(),this.h());
  }
  
  
  @Override
  public boolean inBounds(float x, float y) {
    return x > this.x() && x < this.x()+this.w() &&
           y > this.y() && y < this.y()+this.h();
  }
  
  
  public Vector getSize() {
   return this.size; 
  }
  
  public void setSize(Vector size) {
    this.setW(size.x());
    this.setH(size.y());
  }
  
  public float w() {
    return this.size.x();
  }
  
  public float h() {
    return this.size.y();
  } 
  
  public void setW(float w) {
    this.size.setX(w); 
  }
  
  public void setH(float h) {
    this.size.setY(h); 
  }
  
  
  
}
