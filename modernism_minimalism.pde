//faiz ikramulla ds6390 hw1 - submitted late feb 12 2019
//"A notable characteristic of modernism is self-consciousness and irony concerning literary and 
//social traditions, which often led to experiments with form, along with the use of techniques that 
//drew attention to the processes and materials used in creating a painting, poem, building, etc.
//Modernism explicitly rejected the ideology of realism and makes use of the works of the past by the 
//employment of reprise, incorporation, rewriting, recapitulation, revision and parody." - wikipedia
//Original Image:
//Detroit: Motor City
//© JOHN SMISSON

PImage img;  // Declare variable "a" of type PImage

void setup() {
  size(640, 360);
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  img = loadImage("minimalism.JPG");  // Load the image into the program  
}

void draw() {
  // Displays the image at its actual size at point (0,0)
  image(img, 0, 0);
  // Displays the image at point (0, height/2) at half of its size
  image(img, 0, height/2, img.width/2, img.height/2);
}
