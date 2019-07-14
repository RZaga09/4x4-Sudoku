class grid {
  void show () {
    noFill();
    stroke(255);
    strokeWeight(6);
    for (float i = 300; i < 600; i += 300) {
      line(i, 0, i, 600);
      line(0, i, 600, i);
    }
    
    strokeWeight(1);
    for (float i = 0; i < 600; i += 150) {
      for (float j = 0; j < 600; j += 150) {
        rect(i, j, 150, 150);
      }
    }
  }
}
