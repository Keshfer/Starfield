//your code here
Particle[] test = new Particle[100];
int count = 0;
void setup()
{
  background(0);
  size(800, 800);
  rectMode(CENTER);
  noStroke();
  for (int i = 0; i < 100; i++) {
    test[i] = new Particle();
    if(i == 3) {
     test[i] = new OddballParticle(); 
    }
    test[0] = new OddballParticle();
  }

  //frameRate(30);
  //your code here
}
void draw()
{
  fill(0, 0, 0, 6);
  rect(400, 400, 800, 800);
  for (int i = 0; i < 99; i++) {
    test[i].move();
    test[i].show();
  }



  //your code here
}
class Particle
{
  double myX;
  double size;
  int staticX;
  int staticY;
  double myY;
  double angleX;
  double angleY;
  double myAngle;
  //double startMod;
  double mySpeed;
  Particle() {
    staticX = 400;
    staticY = 400;
    //startMod = Math.random() * 50 + 10;
    myAngle = Math.random() * 6.28319;
    angleX = Math.cos(myAngle);
    angleY = Math.sin(myAngle);
    myX = 400 + angleX;
    myY = 400 + angleY;
    mySpeed = (Math.random() * 6) + 3;
    size = 5;
  }
  void move() {

    if (myX >= 800 || myX <= 0) {
      myAngle = Math.random() * 6.28319;
      //startMod = Math.random() * 50 + 10;
      angleX = Math.cos(myAngle);
      angleY = Math.sin(myAngle);
      mySpeed = (Math.random() *4) + 5;
      myX = 400 + angleX;
      myY = 400 + angleY;
      size = 5;
    } else if (myY >= 800 || myY <= 0) {
      myAngle = Math.random() * 6.28319;
      //startMod = Math.random() * 50 + 10;
      angleX = Math.cos(myAngle);
      angleY = Math.sin(myAngle);
      mySpeed = (Math.random() * 4) + 5;
      myX = 400 + angleX;
      myY = 400 + angleY;
      size = 5;
    }
    size = size + 0.4;
    myX = myX + ((angleX) * mySpeed);
    myY = myY + ((angleY) * mySpeed);
  }
  void show() {
    fill(255, 255, 255);
    ellipse((float)myX, (float)myY, (float)size, (float)size);
    fill(0, 0, 0);
    ellipse(staticX, staticY, 60, 60);
  }
  //your code here
}

class OddballParticle extends Particle //inherits from Particle
{
  int randomizer;

  void OddBallParticle() {
    myAngle = Math.random() * 6.28319;
    angleX = Math.cos(myAngle);
    angleY = Math.sin(myAngle);
    myX = 400 + angleX;
    myY = 400 + angleY;
    mySpeed = (Math.random() * 6) + 3;
    size = 5;
  }
  void move() {
    if (myX >= 800 || myX <= 0) {
      randomizer = (int)(Math.random() * 3);
      myAngle = Math.random() * 6.28319;
      //startMod = Math.random() * 50 + 10;
      angleX = Math.cos(myAngle);
      angleY = Math.sin(myAngle);
      mySpeed = (Math.random() *4) + 5;
      myX = 400 + angleX;
      myY = 400 + angleY;
      size = 5;
    } else if (myY >= 800 || myY <= 0) {
      randomizer = (int)(Math.random() * 3);
      myAngle = Math.random() * 6.28319;
      //startMod = Math.random() * 50 + 10;
      angleX = Math.cos(myAngle);
      angleY = Math.sin(myAngle);
      mySpeed = (Math.random() * 4) + 5;
      myX = 400 + angleX;
      myY = 400 + angleY;
      size = 5;
    }
    size = size + 0.4;
    myX = myX + ((angleX) * mySpeed);
    myY = myY + ((angleY) * mySpeed);
  }
  void show() {
    
    if(randomizer == 0) {
      fill(80, 191, 255);
    } else if (randomizer == 1) {
      fill(80,255,86);
    } else if (randomizer == 2) {
       fill(255,80,80); 
    }

    ellipse((float)myX, (float)myY, (float)size, (float)size);
  }
}
