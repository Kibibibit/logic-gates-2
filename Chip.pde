
public class Chip extends BoxComponent {
  
  private Vector mouseOffset;
  
  public Chip(float x, float y) {
    super(x,y,50,100); 
    mouseOffset = new Vector(0f,0f);
    
  }
  
  public void update() {
    
  }
  
  
  public void onPressed() {
    println("Pressed");
    mouseOffset.setX(super.getShape().x() - mouseX);
    mouseOffset.setY(super.getShape().y() - mouseY);
  }
  
  public void onDragged() {
    println("Dragged");
    super.getShape().setX(mouseX + mouseOffset.x());
    super.getShape().setY(mouseY + mouseOffset.y());
  }
  
  public void onReleased() {
    println("Released");
    mouseOffset.setY(0);
    mouseOffset.setX(0);
    
  }
}
