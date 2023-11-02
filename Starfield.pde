particle[] bob = new particle[1000];
Oddball[] bill = new Oddball[1];

void setup() {
  size(500, 500);
  for (int i = 0; i < bob.length; i++)
    bob[i] = new particle();
    
   for (int j = 0; j < bill.length; j++)
    bill[j] = new Oddball();
}

void draw() {
  background(0);
  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
    bob[i].move();
  }
   for (int j = 0; j < bill.length; j++){
      bill[j].show();
      bill[j].move();
  }
}

class particle {
  double myX, myY, mySpeed, myAngle, myWidth, myHeight;
  int myColor;

  particle() {
    myX = width / 2;
    myY = height / 2;
    myAngle = Math.random() * 2 * Math.PI;
    mySpeed = Math.random() * 10;
    myWidth = 10; 
    myHeight = 10; 
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }

  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)myWidth, (float)myHeight);
  }

  void move() {
    myX = myX + mySpeed * cos((float)myAngle);
    myY = myY + mySpeed * sin((float)myAngle);
  }
}
class Oddball extends particle {
  double myX, myY, mySpeed, myAngle, myWidth, myHeight;
  int myColor;
  Oddball() {
    myX = width / 2;
    myY = height / 2;
    myAngle = Math.random() * 2 * Math.PI;
    mySpeed = Math.random() * 10;
    myWidth = 50; 
    myHeight = 50; 
    myColor = color(255,255,255);
  }
   void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)myWidth, (float)myHeight);
  }
  void move(){
    myX = myX + mySpeed * cos((float)myAngle);
    myY = myY + mySpeed * sin((float)myAngle);
  }
}

