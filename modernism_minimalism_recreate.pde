//faiz ikramulla ds6390 hw1 - submitted late feb 12 2019
//"A notable characteristic of modernism is self-consciousness and irony concerning literary and 
//social traditions, which often led to experiments with form, along with the use of techniques that 
//drew attention to the processes and materials used in creating a painting, poem, building, etc.
//Modernism explicitly rejected the ideology of realism and makes use of the works of the past by the 
//employment of reprise, incorporation, rewriting, recapitulation, revision and parody." - wikipedia
//Original Image:
//Detroit: Motor City
//© JOHN SMISSON
// my inspiration for this is my hometown and the minimalism aspect of modernism from the wiki description above.
// i tried to incorporate reprise and recapitulation from works of the past (cars/vehicles) to recreate the painting with 
// a present/futuristic/minimalist vision of what "cars/vehicles" are/will be like in the near future - electricity.  
// thus, the minimalist/modernist factory of the future just needs to mass produce and mass sell energy (batteries?).
// i input an image an image of a lightning bolt to represent this  

PImage img;  // Declare variable "a" of type PImage

void setup() {
  size(640, 360);  
  background(12,80,245);


//boxes of cars
fill(12,245,146);
rect(0,180,180,210);
rect(210,180,180,210);
rect(420,180,180,210);
//chimneys
fill(5,31,95);
rect(20,20,10,60);
rect(170,20,10,60);
rect(320,20,10,60);
rect(470,20,10,60);
rect(620,20,10,60);
//windows
fill(225,240,29);
rect(20,80,60,60);
rect(170,80,60,60);
rect(320,80,60,60);
rect(470,80,60,60);
rect(620,80,60,60);
//smoke
fill(227,227,224);
line(20,20,60,30);
line(300,20,340,30);
line(150,20,190,30);
line(450,20,490,30);
line(600,20,640,30);
//conveyer belt
fill(240,77,12);
rect(0,320,640,10);

//wheels on lighting
fill(0,0,0);
ellipse(40,315,15,15);
ellipse(80,315,15,15);
ellipse(120,315,15,15);
ellipse(160,315,15,15);
ellipse(200,315,15,15);
ellipse(240,315,15,15);
ellipse(280,315,15,15);
ellipse(320,315,15,15);
ellipse(360,315,15,15);
ellipse(400,315,15,15);
ellipse(440,315,15,15);
ellipse(480,315,15,15);
ellipse(520,315,15,15);
ellipse(560,315,15,15);
ellipse(600,315,15,15);
ellipse(640,315,15,15);

img = loadImage("lightning.JPG");

}
void draw() {
     // Displays the image at point (0, height/1.95) at half of its size
  image(img, 30, height/1.95, img.width/2, img.height/2);
  image(img, 230, height/1.95, img.width/2, img.height/2);
  image(img, 430, height/1.95, img.width/2, img.height/2);
}
