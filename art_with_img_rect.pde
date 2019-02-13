//anthony egbuniwe & faiz ikramulla ds6390 hw5
// Two global variables
float x;
float y;

// Variable to hold onto Capture object.
PImage img;

void setup() {  
  size(655, 385);  
  background(255);  
  // Start x and y in the center  
  x = width/2;  
  y = height/2;
  img  = loadImage("img2.jpg"); // Load the image
}

void draw() {
  img.loadPixels();
  float newx = constrain(x + random(-20, 20), 0, width);   
  float newy = constrain(y + random(-20, 20), 0, height-1);
  
  // Find the midpoint of the line
  int midx = int((newx + x) / 2);
  int midy = int((newy + y) / 2);
  // Pick the color from the video, reversing x
  color c = img.pixels[constrain((width-1-midx) + midy*img.width, 0, width*height)];
  
  // Draw a line from (x,y) to (newx,newy)  
  stroke(c);  
  strokeWeight(4);  
  line(x, y, newx, newy);  
  
  // Save (newx,newy) in (x,y)  
  x = newx;  
  y = newy;
}
