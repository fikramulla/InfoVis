//faiz ikramulla, assignment 3
//use draw(), make dynamic composition, 5-10 elements

float movecircle = 0;
float moverect = 0;

void setup() {
  size(800, 800);  // Size must be the first statement
  smooth();
}
void draw() {
  background (255);
  indigo();
    
  movecircle += TWO_PI /600;
  moverect += TWO_PI /600;
  
  translate(0, 0);
  pushMatrix();
    rotate(movecircle);
    translate(100, 0);
    fill (126,29,211);
    ellipse (400,400,200,200);
  popMatrix();
    pushMatrix();
      translate(100, 0);
      rotate(moverect);
      fill (0,200,0);
      rect (400,400,150,150);
    popMatrix();
  //popMatrix();
  
  pushMatrix();
    rotate(movecircle);
    translate(100, 0);
    fill (0,255,0);
    ellipse (400,400,100,100);
    pushMatrix();
      translate(100, 0);
      rotate(moverect);
      fill (126,29,211);
      rect (400,400,50,50);
    popMatrix();
  popMatrix();
}

void indigo (){
  fill (126,29,211);
  ellipse (400,400,200,200);
  
  fill (0,200,0);
  rect (400,400,150,150);
  
  fill (0,255,0);
  ellipse (400,400,100,100);
  
  fill (126,29,211);
  rect (400,400,50,50);
  
  fill (126,29,211);
  triangle(18, 18, 18, 360, 81, 360);
  
}
      
