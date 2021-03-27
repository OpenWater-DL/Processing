class LoopNoise {

  float xoff, yoff;
  float loopNoise;
  float diameter;
  float min, max;
  float cx, cy;
  LoopNoise(float diameter, float min, float max) {

    this.diameter =diameter;
    this.min = min;
    this.max = max;

    cx=random(100);
    cy=random(100);
  }

  float value(float a) {

    xoff = map(cos(a), -1, 1, cx, cx+diameter);//用极端值，-1 1的情况去关联想象。
    yoff =map(sin(a), -1, 1, cy, cy+diameter);

    float loopNoise = noise(xoff, yoff); //noise 的值是0~1

    return map(loopNoise,0,1,min,max);
  }
  
}
