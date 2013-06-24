class Student {
  int studentX;
  int studentY;
  int value;
  String label;
  int IDnumber;
  boolean isNew;
  boolean isInBuilding;

  Student (int studentX_, int studentY_, int value_, String label_, int IDnumber_) {
    studentX = studentX_;
    studentY = studentY_;
    IDnumber = IDnumber_;
    value = value_;
    label = label_;
    isNew = true;
    isInBuilding = false;
  }

  void display() {
    fill(value);
    rectMode(CENTER);
    rect(studentX, studentY, 20, 20);
    textAlign(CENTER);
    text(label, studentX, studentY - 13);
  }
}

