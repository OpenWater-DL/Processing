// 要点是对半径进行noise的干扰。

float noiseA,start;
float noiseMax=50;
float zoff,phase;
void setup() {
  size(600, 400);
}


void draw() {
background(0);
stroke(255);

noFill();
translate(width/2,height/2);
beginShape();

noiseA=start;
for(float a=0;a<TWO_PI;a+=0.05){
  float xoff=map(cos(noiseA),-1,1,0,noiseMax);
  float yoff=map(sin(noiseA),-1,1,0,noiseMax);
float r=map(noise(xoff,yoff,zoff),0,1,100,200);

  float x= r*cos(a);
  float y= r*sin(a);
  vertex(x,y);
   noiseA+=0.01;
}
endShape(CLOSE);
 zoff =10*sin(frameCount*0.001);
 println(zoff);
 
 
}
