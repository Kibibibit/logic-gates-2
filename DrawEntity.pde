public abstract class DrawEntity extends Entity {
  
  private int stroke = 255;
  private int strokeWeight = 5;
  private int fill = BACKGROUND;
  
  protected abstract void onDraw();
  
  public DrawEntity(float x, float y) {
    super(x,y); 
  }
  
  public DrawEntity(Vector pos) {
    super(pos); 
  }
  
  public abstract boolean inBounds(float x, float y);
  
  public boolean inBounds(Vector pos) {
    return inBounds(pos.x(), pos.y()); 
  }
  
  public void setStroke(int stroke) {
    this.stroke = stroke;
  }
  
  public void setStrokeWeight(int strokeWeight) {
    this.strokeWeight = strokeWeight;
  } 
  
  public void setFill(int fill) {
    this.fill = fill; 
  }
  
  public void draw() {
    push();
    stroke(this.stroke);
    strokeWeight(this.strokeWeight);
    fill(this.fill);
    
    this.onDraw();
    
    pop();
    
  }
  
}
