class Particle {
  float x, y;
  float cd;
  float r,b;
  float d;
  LoopNoise nx;
  LoopNoise ny;


  Particle() {

    d = random(10, 30 );
    nx = new LoopNoise(1, 0, width);
    ny = new LoopNoise(2, 0, height);

  }


  void render() {


x=nx.value(a);
y=ny.value(a);
fill(255,0,255,200);
    circle(x, y, d);
  }
}
