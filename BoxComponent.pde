
public abstract class BoxComponent extends Component {
 
  public BoxComponent(Box box) {
    super(box);
  }
  
  public BoxComponent(float x, float y, float w, float h) {
   super(new Box(x,y,w,h)); 
  }
  
  
  public Box getShape() {
   return (Box) super.getShape();
  }
  
  public void setShape(Box shape) {
    super.setShape(shape); 
  }
  
  protected void onDraw() {
    this.getShape().draw();
  }
  
  
}
