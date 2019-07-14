class vals {
  void line1() {
    numbers.append(1);
    numbers.append(2);
    numbers.append(3);
    numbers.append(4);
    numbers.shuffle();
    for (int i = 0; i < 4; i++) {
      line1[i] = numbers.get(i);
    }
  }

  void line2() {
    float i = random(0, 1);
    if (i <= 0.49) {
      line2[0] = line1[2];
      line2[1] = line1[3];
    } else {
      line2[0] = line1[3];
      line2[1] = line1[2];
    }
    float j = random(0, 1);
    if (j <= 0.49) {
      line2[2] = line1[0];
      line2[3] = line1[1];
    } else {
      line2[3] = line1[1];
      line2[2] = line1[0];
    }
  }

  void line3() {
    float i = random(0, 2);
    if (i <= 0.49) {
      line3[0] = line1[1];
      line3[1] = line2[0];
    } else if (0.49 < i && i <= 0.99) {
      line3[0] = line2[1];
      line3[1] = line1[0];
    } else if (0.99 < i && i <= 1.49) {
      line3[0] = line1[1];
      line3[1] = line1[0];
    } else if (1.49 < i && i <= 1.99) {
      line3[0] = line2[1];
      line3[1] = line2[0];
    }

    for (int j : numbers) {
      if (j != line3[0] && j != line3[1] && j != line1[2] && j != line2[2]) {
        line3[2] = j;
      }
    }

    for (int d : numbers) {
      if (d != line3[0] && d != line3[1] && d != line3[2]) {
        line3[3] = d;
      }
    }
  }

  void error_handling() {
    if (line3[3] == line1[3] || line3[3] == line2[3]) {
      int i = line3[3];
      for (int j = 0; j < 2; j++) {
        if (i != line1[j] && i != line2[j]) {
          line3[3] = line3[j];
          line3[j] = i;
        }
      }
    }

    if (line3[2] == 0) {
      for (int k : numbers) {
        if (k != line3[0] && k != line3[1] && k != line3[3]) {
          int h = k;
          if (h != line1[0] && h != line2[0]) {
            line3[2] = line3[0];
            line3[0] = h;
          } else {
            line3[2] = line3[1];
            line3[1] = h;
          }
          break;
        }
      }
    }
  }

  void line4() {
    for (int i : numbers) {
      if (i != line1[0] && i != line2[0] && i != line3[0]) {
        line4[0] = i;
      } else if (i != line1[1] && i != line2[1] && i != line3[1]) {
        line4[1] = i;
      } else if (i != line1[2] && i != line2[2] && i != line3[2]) {
        line4[2] = i;
      } else if (i != line1[3] && i != line2[3] && i != line3[3]) {
        line4[3] = i;
      }
    }
  }
}
