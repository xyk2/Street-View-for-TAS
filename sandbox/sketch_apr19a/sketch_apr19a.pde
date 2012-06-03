PImage b;
int copyOffsetX = 0;
int copyOffsetY = 0;
int copyWidth;
int copyHeight;
int oldX=0;
int oldY=0;
int imageWidth;
int imageHeight;


void setup() {
  size(1200, 700, P3D);

  b = loadImage("panorama.jpg");

  copyWidth = width; //assign values to globals
  copyHeight = height;
  imageWidth = b.width;
  imageHeight = b.height;
}

void draw() {
    background(0); 
    pan();

    image(b, -copyOffsetX, -copyOffsetY); // make an image and load it to the screen
    image(b, -copyOffsetX - (imageWidth), -copyOffsetY); // secondary images for continuous pan (left and right)
    image(b, -copyOffsetX + (imageWidth), -copyOffsetY);
  
}


  void mousePressed() {
    oldX = mouseX;
    oldY = mouseY;
  }

  void pan() {
    if (mousePressed == true) {
      int newX = oldX - mouseX;
      int newY = oldY - mouseY;   
      copyOffsetX += newX;
      copyOffsetY += newY;
      newX=0;
      newY=0;
      oldX = mouseX;
      oldY = mouseY;
      println(copyOffsetX);
    }
  }





