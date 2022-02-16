public class Circle extends DrawEntity {
  
 private float radius;
 
 public Circle(float x, float y, float radius) {
  super(x,y);
  this.radius = radius;
 }
 
 public Circle(Vector pos, float radius) {
  this(pos.x(), pos.y(), radius); 
 }
 
 @Override
 protected void onDraw() {
  circle(this.x(), this.y(), this.r()); 
 }
 
 
 @Override
 public boolean inBounds(float x, float y) {
  return this.getPos().distance(x,y) < this.radius; 
 }
 
 
 public float r() {
   return this.radius; 
 }
 
 public float getRadius() {
   return this.radius; 
 }
 
 public void setRadius(float r) {
   this.radius = r; 
 }
 
 public void setR(float r) {
   this.radius = r; 
 }
 
 
  
}
