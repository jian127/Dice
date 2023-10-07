int totalRolls;
Dice bob;
int sum = 0;
int oneRoll = 0;
void setup() {
  size(500, 530);
  noLoop();
}
void draw() {
  background(0);
fill(255, 255, 255);

    
  for (int i = 10; i <= 500; i+= 50) {
    for (int a = 10; a <= 500; a+= 50) {
      Dice bob = new Dice(i, a);
      bob.show();
      fill(255,255,255);
      sum = sum + totalRolls;
      oneRoll = oneRoll + totalRolls;
    }

    
  }
  textSize(25);
      text("Sum: " + oneRoll, 100, 520);
      text("Total Sum: " + sum, 205, 520);
}
void mousePressed() {
  redraw();
  oneRoll = 0;
}
class Dice {
  int number;
  int myX, myY;
  Dice(int x, int y) {
    myX = x;
    myY = y;
    number = ((int)(Math.random()*6 + 1));
  }
 

  //dice roll number
  void rolls() {
    if (number == 1) {
      ellipse(myX + 20, myY + 20, 10, 10);
      totalRolls = 1;
    } else if (number == 2) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 30, myY+ 30, 10, 10);
      totalRolls = 2;
    } else if (number == 3) {
      ellipse(myX + 20, myY + 7, 10, 10);
      ellipse(myX + 20, myY + 21, 10, 10);
      ellipse(myX + 20, myY + 34, 10, 10);
      totalRolls = 3;
    } else if (number == 4) {
      ellipse(myX + 12, myY + 15, 10, 10);
      ellipse(myX + 12, myY + 30, 10, 10);
      ellipse(myX + 30, myY + 15, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
      totalRolls = 4;
    } else if (number == 5) {
      ellipse(myX + 10, myY + 7, 10, 10);
      ellipse(myX + 30, myY + 7, 10, 10);
      ellipse(myX + 20, myY + 19, 10, 10);
      ellipse(myX + 10, myY + 31, 10, 10);
      ellipse(myX + 30, myY + 31, 10, 10);
      totalRolls = 5;
    } else if (number==6) {
      ellipse(myX + 10, myY + 7, 10, 10);
      ellipse(myX + 30, myY + 7, 10, 10);
      ellipse(myX + 10, myY + 21, 10, 10);
      ellipse(myX + 30, myY + 21, 10, 10);
      ellipse(myX + 10, myY + 34, 10, 10);
      ellipse(myX + 30, myY + 34, 10, 10);
      totalRolls = 6;
    }
  }
  void show() {
    noStroke();
    fill(255, 255, 255);
    rect(myX, myY, 40,40);
    fill(0);
    rolls();
    fill(0, 0, 0);
    //text(number,myX + 15,myY + 25);
  }
}
