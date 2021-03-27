int counter = 0;
float a=0;
float percent;
float totalFrame=100;
Particle[] particles = new Particle[10];

void setup() {
  size(600, 600);
  for(int i = 0;i<particles.length;i++){
  particles[i] = new Particle();
  
  }
  
}

void draw() {
background(0);
  percent = (counter%totalFrame)/totalFrame;

render(percent);

  counter++;
}


void render(float percenter) {
  a=percent*TWO_PI;
  
  for(Particle p : particles){
  
    p.render();
  
  }
  
}
