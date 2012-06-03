PImage b;

int copyOffsetX = 0;
int copyOffsetY = 0;
int copyWidth;
int copyHeight;
int oldX=0;
int oldY=0;
int imageWidth;
int imageHeight;

int zoomY;
int oldZoomY;

float resizedWidth;

void setup() {

  size(1200, 700, P3D);
  b = loadImage("panorama/lower_field.jpg");
}

void draw() {
  background(0); 
  image(b, 0, 0);
  camera(copyOffsetX*3, copyOffsetY*3, -zoomY*3, copyOffsetX*3, copyOffsetY*3, 0.0, 0.0, 1.0, 0.0);
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
























