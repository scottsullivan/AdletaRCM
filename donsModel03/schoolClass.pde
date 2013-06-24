class Building {
  int buildingX;
  int buildingY;
  int buildingW;
  int buildingH;
  IntList OSG = new IntList();
  IntList ISG = new IntList();
  IntList OSUG = new IntList();
  IntList ISUG = new IntList();
  int value;
  int buildingIDnumber;
  String label;

  Building (int buildingX_, int buildingY_, int buildingW_, int buildingH_, String label_, int buildingIDnumber_) {
    buildingX = buildingX_;
    buildingY = buildingY_;
    buildingW = buildingW_;
    buildingH = buildingH_;
    buildingIDnumber = buildingIDnumber_;
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
      if (dist(students[i].studentX, students[i].studentY, buildingX, buildingY) < 85 && students[i].isNew) {
        students[i].isNew = false;
        students[i].isInBuilding = true;
        students[i].inBuildingID = buildingIDnumber;
        switch(students[i].IDnumber) {
        case 1:
          OSG.set(0, 200);
          break;
        case 2:
          ISG.set(0, 150);
          break;
        case 3:
          OSUG.set(0, 100);
          break;
        case 4:
          ISUG.set(0, 50);
          break;
        }
      }
      if (dist(students[i].studentX, students[i].studentY, buildingX, buildingY) > 85 && !students[i].isNew) {
        if (students[i].isInBuilding && students[i].inBuildingID == buildingIDnumber) {
          switch(students[i].IDnumber) {
          case 1:
            OSG.set(0, 0);
            break;
          case 2:
            ISG.set(0, 0);
            break;
          case 3:
            OSUG.set(0, 0);
            break;
          case 4:
            ISUG.set(0, 0);
            break;
          }
          students[i].isNew = true;
          students[i].isInBuilding = false;
          students[i].inBuildingID = 0;
        }
      }
      value = OSG.get(0) + ISG.get(0) + OSUG.get(0) + ISUG.get(0);
    }
  }
}
