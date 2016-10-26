int Tempo =60;
float ThetaMax = PI/4;
float r1, t, b1, Theta;
float X1, Y1, X2, Y2;
float dt, t0;
void setup() {
  size(320, 200);
  stroke(0); background(255);
  X1=width/2;
  Y1=2*height/10;
  t=0;
  Theta=PI/2;
  frameRate(60);
  dt=1.0/60;
  println("dt=",dt);
  b1=PI/3/50/2;
  r1= height*0.7;
  b1=2.0*(PI/2-ThetaMax)*(Tempo/60.0);
  t0=millis();
}
void draw() {
  Theta=Theta+b1*dt;
  if (Theta > ThetaMax+PI/2 ||
      Theta < PI/2-ThetaMax)
  {b1 = -b1;
     println ( millis()-t0);
     t0=millis();
  }
  fill(255);
  ellipse(X2,Y2,10,10);
  X2=X1+r1*cos(Theta);
  Y2=Y1+r1*sin(Theta);
  stroke(255,255,255);
  strokeWeight(2);
  fill(255,0,0);
  line(X1,Y1,X2,Y2);
  ellipse(X2,Y2,10,10);
}