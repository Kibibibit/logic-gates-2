/////// SETTINGS ////////

final int BACKGROUND = 20;


ArrayList<UpdateEntity> updateEntities;
ArrayList<DrawEntity> drawEntities;

UpdateEntity mouseOver;

boolean RUNNING = false;

Thread updateThread;

boolean DRAGGING = false;


Chip chip;
Chip chip2;

void setup() {
  size(1200,900);
  frameRate(30);
  
  updateEntities = new ArrayList<UpdateEntity>();
  drawEntities = new ArrayList<DrawEntity>();
   
  chip = new Chip(100,100);
  chip2 = new Chip(200,200);
  updateEntities.add(chip);
  updateEntities.add(chip2);
  drawEntities.add(chip);
  drawEntities.add(chip2);
 
 RUNNING = true;
 
  updateThread = new Thread(new Runnable() {
     public void run() {
       update();
     }
 });
 
 updateThread.start();
  
 mouseOver = null;
  
}

void mouseCheck() {
  if (mouseOver != null) {
    if (!mouseOver.inBounds(mouseX,mouseY)) {
      mouseOver = null; 
      DRAGGING = false;
    }
  }
}

void mousePressed() {
  mouseCheck();
  if (mouseOver != null) {
    mouseOver.onPressed(); 
  }
}

void mouseDragged() {
  mouseCheck();
  if (mouseOver != null) {
    DRAGGING = true;
    mouseOver.onDragged(); 
  }
}

void mouseReleased() {
  mouseCheck();
  if (mouseOver != null) mouseOver.onReleased();
  mouseOver = null;
  DRAGGING = false;
  
}


void draw() {
  
  clear();
  background(BACKGROUND);
  
  
  for (DrawEntity entity : drawEntities) {
    entity.draw();
  }
}

void update() {

  while (RUNNING) {
    
    boolean mouseOverSet = false;
  
    for (UpdateEntity entity: updateEntities) {
        
     
        if (entity.inBounds(mouseX,mouseY) && !DRAGGING && !mouseOverSet) {
          mouseOver = entity;
          mouseOverSet = true;
        }
        
        entity.update();
      }
      
      
    
    
  
  }
  
}
