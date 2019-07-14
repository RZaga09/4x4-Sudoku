class play {
  void show() {
    textSize(64);
    textAlign(CENTER, CENTER);
    fill(0, 255, 0);
    for (int i = 0; i < 8; i++) {
      if (solve[i] != 0) {
        text(solve[i], xpos.get(i), ypos.get(i));
      }
    }
  }

  void check() {
    for (int i = 0; i < 8; i++) {
      if (solve[i] == ans_val.get(i)) {
        prob = true;
      } else {
        prob = false;
        if (prob == false) {
          break;
        }
      }
    }

    if (prob == true) {
      win = true;
    }
  }
}
