PImage b;

int copyOffsetX = 1500; 
int copyOffsetY = 1000;
int oldX=0;
int oldY=0;
int imageWidth;
int imageHeight;

int zoomY = -1700;
int oldZoomY;
float zoomMultiplier = 3;

void setup() {

  size(1200, 700, P3D);
  b = loadImage("vector_png_export_100ppi.png");
  noStroke();
  fill(255, 0, 0);
    tint(255, 125);

}

void draw() {
  background(0); 
  image(b, 0, 0);
  camera(copyOffsetX*3, copyOffsetY*3, -zoomY*zoomMultiplier, copyOffsetX*3, copyOffsetY*3, 0.0, 0.0, 1.0, 0.0);
  ellipse(3400, 5850, 100, 100);
  zoom();
  pan();
}


void mousePressed() {
  oldX = mouseX;
  oldY = mouseY;
  oldZoomY = mouseY;
}

void pan() {
  if (mousePressed == true && mouseButton == LEFT) {
    int newX = oldX - mouseX;
    int newY = oldY - mouseY;   
    copyOffsetX += newX;
    copyOffsetY += newY;
    oldX = mouseX;
    oldY = mouseY;
  }
}


void zoom() {
  if (mousePressed == true && mouseButton == RIGHT) {
    int newZoomY = oldZoomY - mouseY;   
    zoomY += newZoomY;
    newZoomY=0;
    oldZoomY = mouseY;
  }
}


