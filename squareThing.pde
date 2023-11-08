int x1;
int x2;
int x3;
int y1;
int y2;
int y3;
float xs1;
float xs2;
float xs3;
float ys1;
float ys2;
float ys3;
boolean game;
void setup() {
  size(400, 400);
  game = false;
  x1 = int(random(350));
  x2 = int(random(350));
  x3 = int(random(350));
  y1 = int(random(350));
  y2 = int(random(350));
  y3 = int(random(350));
  xs1 = -2;
  xs2 = 2;
  xs3 = -2;
  ys1 = 2;
  ys2= -2;
  ys3= 2;
}
void draw() {

  // if game is true play game else go to setup
  if (game == true) {
    g();
  } else {
    s();
  }
}
void s() {

  // main menu
  background(0);
  textAlign(CENTER);
  textSize(25);
  text("Click on the square to freeze the squares. Once you freeze all squares, you win. Click anywhere to continue", 100, 50, 200, 200);
}
void g() {
  background(0);
  s1();
  s2();
  s3();
  // if speed is zero you win
  if (xs1 == 0 && xs2 == 0 && xs3==0) {
    background(0);
    textAlign(CENTER);
    textSize(25);
    text("whoo! you won!", 100, 50, 200, 200);
  }
}

// logic for square 1
void s1() {
  fill(255);
  if (xs1==0) {
    fill(255, 0, 0);
  }
  rect(x1, y1, 50, 50);
  x1+=xs1;
  y1+=ys1;


  if (xs1==0) {
    fill(255, 0, 0);
  }

  if (x1>350 || x1 <0) {
    xs1*=-1;
  }
  if (y1>350 || y1<0) {
    ys1*=-1;
  }
}

// logic for square 2
void s2() {
  fill(255);
  if (xs2==0) {
    fill(255, 0, 0);
  }
  rect(x2, y2, 50, 50);
  x2+=xs2;
  y2+=ys2;


  if (x2>350 || x2 <0) {
    xs2*=-1;
  }
  if (y2>350 || y2<0) {
    ys2*=-1;
  }
}

// logic for square 3
void s3() {
  fill(255);
  if (xs3==0) {
    fill(255, 0, 0);
  }
  rect(x3, y3, 50, 50);
  x3+=xs3;
  y3+=ys3;

  if (x3>350 || x3 <0) {
    xs3*=-1;
  }
  if (y3>350 || y3 <0) {
    ys3*=-1;
  }
}

void keyPressed() {
}
void mousePressed() {
  // setup mouse press thing
  if (game == false) {
    game=true;
  }
  // click on box logic
  if (game == true) {
    if (mouseX>x1 && mouseX<x1+50 && mouseY>y1 && mouseY<y1+50) {
      xs1=0;
      ys1=0;
    }
    if (mouseX>x2 && mouseX<x2+50 && mouseY>y2 && mouseY<y2+50) {
      xs2=0;
      ys2=0;
    }
    if (mouseX>x3 && mouseX<x3+50 && mouseY>y3 && mouseY<y3+50) {
      xs3=0;
      ys3=0;
    }
  }
}
