int[] line1 = new int[4];  
int[] line2 = new int[4];
int[] line3 = new int[4];  
int[] line4 = new int[4];
int[] solve = {0, 0, 0, 0, 0, 0, 0, 0};
grid grid;
vals vals;
write write;
play play;
IntList numbers;
IntList show1;
IntList show2;
IntList show3;
IntList show4;
IntList ans_val;
IntList xpos;
IntList ypos;
boolean win = false;
boolean prob = false;

void setup() {
  size(600, 600);
  numbers = new IntList();
  show1 = new IntList();
  show2 = new IntList();
  show3 = new IntList();
  show4 = new IntList();
  ans_val = new IntList();
  xpos = new IntList();
  ypos = new IntList();
  vals = new vals();
  grid = new grid();
  write = new write();
  play = new play();
  vals.line1();
  vals.line2();
  vals.line3();
  vals.error_handling();
  vals.line4();
  shuffler();
}

void draw() {
  background(0);
  if (win == false) {
    grid.show();
    write.show();
    play.show();
    play.check();
  } else {
    background(0);
    textSize(64);
    textAlign(CENTER, CENTER);
    fill(255);
    text("You Win", width/2, height/2);
  }
}

  void mouseClicked() {
    for (int i = 0; i < 8; i++) {
      if (xpos.get(i) - 75 <= mouseX && xpos.get(i) + 75 > mouseX && ypos.get(i) - 75 <= mouseY && ypos.get(i) + 75 > mouseY) {
        if (solve[i] == 4) {
          solve[i] = 0;
        } else {
          solve[i]++;
        }
      }
    }
  }

  void shuffler() {
    numbers.shuffle();
    show1.append(numbers.get(0));
    show1.append(numbers.get(1));
    show1.append(numbers.get(2));
    show1.append(numbers.get(3));
    numbers.shuffle();
    show2.append(numbers.get(0));
    show2.append(numbers.get(1));
    show2.append(numbers.get(2));
    show2.append(numbers.get(3));
    numbers.shuffle();
    show3.append(numbers.get(0));
    show3.append(numbers.get(1));
    show3.append(numbers.get(2));
    show3.append(numbers.get(3));
    numbers.shuffle();
    show4.append(numbers.get(0));
    show4.append(numbers.get(1));
    show4.append(numbers.get(2));
    show4.append(numbers.get(3));
  }
