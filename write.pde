class write {
  void show() {
    int j = 75;
    int k = 75;
    textSize(64);
    textAlign(CENTER, CENTER);
    fill(255);

    for (int i = 0; i < 4; i++) {
      if (line1[i] == show1.get(0) || line1[i] == show1.get(1)) {
        text(line1[i], j, k);
      } else {
        answer(line1[i], j, k);
      }
      j += 150;
    }

    j = 75;
    k += 150;
    for (int i = 0; i < 4; i++) {
      if (line2[i] == show2.get(0) || line2[i] == show2.get(1)) {
        text(line2[i], j, k);
      } else {
        answer(line2[i], j, k);
      }
      j += 150;
    }

    j = 75;
    k += 150;
    for (int i = 0; i < 4; i++) {
      if (line3[i] == show3.get(0) || line3[i] == show3.get(1)) {
        text(line3[i], j, k);
      } else {
        answer(line3[i], j, k);
      }
      j += 150;
    }

    j = 75;
    k += 150;
    for (int i = 0; i < 4; i++) {
      if (line4[i] == show4.get(0) || line4[i] == show4.get(1)) {
        text(line4[i], j, k);
      } else {
        answer(line4[i], j, k);
      }
      j += 150;
    }
  }

  void answer(int value, int x_pos, int y_pos) {
    if (ans_val.size() != 8) {
      ans_val.append(value);
      xpos.append(x_pos);
      ypos.append(y_pos);
    }
  }
}
