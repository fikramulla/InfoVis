//faiz ikramulla, anthony egbuniwe, assignment 4
//hourglass with sand particles use draw(), make dynamic composition, few elements, objects/class/functions, push and pop, conditionals

//float movecircle = 0;
//float moverect = 0;

ParticleSystem ps;

void setup() {
  size(800, 800);
  ps = new ParticleSystem(new PVector(width/2, 50));
}

void draw() {
  background(0);
  dool();
  sand();
  ps.addParticle();
  ps.run();
}

void dool (){
   
  fill (255,255,255);
  triangle(300, 200, 425, 400, 550, 200);
  triangle(300, 600, 425, 400, 550, 600);
  
  fill (252,213,133);
  triangle(340, 260, 425, 400, 510, 260);
  rect (340,550,170,50);
 // triangle(300, 600, 425, 400, 550, 600);
  
}

void sand(){
  fill (211,145,13);
  ellipse (425,400,10,10);
}

// A class to describe a group of Particles
// An ArrayList is used to manage the list of Particles 

class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector position) {
    origin = position.copy();
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}


// A simple Particle class

class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    position = new PVector(425,400);
    acceleration = new PVector(0, 1);
    velocity = new PVector(random(-1, 1), random(-2, 0));
 //   position = l.copy();
    lifespan = 255;
  }

  void run() {
    update();
    display();
  }

  // Method to update position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 15.0;
  }

  // Method to display
  void display() {
    stroke(255, lifespan);
    fill (211,145,13);
    ellipse(position.x, position.y, 10, 10);
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
