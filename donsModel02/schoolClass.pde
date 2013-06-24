class Building {
  int buildingX;
  int buildingY;
  int buildingW;
  int buildingH;
  IntList OSG = new IntList;
  IntList ISG = new IntList;
  IntList OSUG = new IntList;
  IntList ISUG = new IntList;
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
    noFill();
    stroke(#8B9BFF);
    rectMode(CENTER);
    rect(buildingX, buildingY, buildingW, buildingH);
    noStroke();
    textAlign(CENTER);
    fill(#8B9BFF);
    text(label, buildingX, buildingY + 90);
    text(value, buildingX, buildingY + 105);
  }

  void evaluate() {
    //consider making this a switch with a default of isInBuilding = false and isNew = true
    for (int i = 0; i < students.length; i++) {
      if (dist(students[i].studentX, students[i].studentY, buildingX, buildingY) < 85 && students[i].IDnumber == 1 && students[i].isNew) {
        OSG.append(200);
        students[i].isNew = false;
      }
      if (dist(students[i].studentX, students[i].studentY, buildingX, buildingY) < 85 && students[i].IDnumber == 2 && students[i].isNew) {
        ISG.append(150);
        students[i].isNew = false;
      }
      if (dist(students[i].studentX, students[i].studentY, buildingX, buildingY) < 85 && students[i].IDnumber == 3 && students[i].isNew) {
        OSUG.append(100);
        students[i].isNew = false;
      }
      if (dist(students[i].studentX, students[i].studentY, buildingX, buildingY) < 85 && students[i].IDnumber == 4 && students[i].isNew) {
        ISUG.append(50);
        students[i].isNew = false;
      }
    }

