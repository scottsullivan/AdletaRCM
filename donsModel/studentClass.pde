class Student {
  int studentX;
  int studentY;
  int value;
  String label;

  Student (int studentX_, int studentY_, int value_, String label_) {
    studentX = studentX_;
    studentY = studentY_;
    value = value_;
    label = label_;
  }

  void display() {
    fill(value);
    rectMode(CENTER);
    rect(studentX, studentY, 20, 20);
    textAlign(CENTER);
    text(label, studentX, studentY - 13);
  }
}

