
public class Vector {
  
 private float x,y;
 
 
 public Vector(float x, float y) {
  
   this.x = x;
   this.y = y;
   
 }
  
  
 public float distance(float xx, float yy) {
   return sqrt(pow(this.x-xx,2) + pow(this.y-yy,2));
 }
 
 public float distance(Vector other) {
   return distance(other.x(), other.y()); 
 }
 
 
 public Vector clone() {
  
    return new Vector(this.x(),this.y());
   
 }
  
  
 
 public float x() {
   return this.x; 
 }
 
 public float y() {
   return this.y; 
 }
 
 public void setX(float x) {
   this.x = x; 
 }
 
 public void setY(float y) {
   this.y = y; 
 }
  
}
