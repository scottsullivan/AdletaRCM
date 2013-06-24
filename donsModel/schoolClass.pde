class Building {
  int buildingX;
  int buildingY;
  int buildingW;
  int buildingH;
  int value;
  String label;

  Building (int buildingX_, int buildingY_, int buildingW_, int buildingH_, String label_) {
    buildingX = buildingX_;
    buildingY = buildingY_;
    buildingW = buildingW_;
    buildingH = buildingH_;
    value = 0;
    label = label_;
  }

  void display() {
    fill(value);
    rectMode(CENTER);
    rect(buildingX, buildingY, buildingW, buildingH);
    textAlign(CENTER);
    text(label, buildingX, buildingY - 80);
    text(value, buildingX, buildingY - 90);
  }
}

