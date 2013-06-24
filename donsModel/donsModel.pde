int b1v = 0;
int b2v = 0;
int b3v = 0;

Student student1 = new Student(50, 290, 200, "OS Grad");
Student student2 = new Student(150, 290, 150, "IS Grad");
Student student3 = new Student(250, 290, 100, "OS U-Grad");
Student student4 = new Student(350, 290, 50, "IS U-Grad");

Student[] students = new Student[4];

void setup() {
  size(600, 300);
  background(255);
  smooth();
  noStroke();

  students[0] = student1;
  students[1] = student2;
  students[2] = student3;
  students[3] = student4;
}

void draw() {
  background(255);

  rectMode(CENTER);
  textAlign(CENTER);

  noFill();
  stroke(#8B9BFF);
  rect(100, 100, 150, 150);
  rect(300, 100, 150, 150);
  rect(500, 100, 150, 150);
  
  fill(#8B9BFF);
  text(b1v, 100, height-100);
  text(b2v, 300, height-100);
  text(b3v, 500, height-100);


  noStroke();
  for (int i = 0; i < students.length; i++) {
    students[i].display();

    if (dist(students[i].studentX, students[i].studentY, 100, 100) < 85) {
      b1v = students[i].value;
    }

    if (dist(students[i].studentX, students[i].studentY, 300, 100) < 85) {
      b2v = students[i].value;
    }

    if (dist(students[i].studentX, students[i].studentY, 500, 100) < 85) {
      b3v = students[i].value;
    }
  }
}

void mouseDragged() {
  if (dist(mouseX, mouseY, student1.studentX, student1.studentY) < 20) {
    student1.studentX = mouseX;
    student1.studentY = mouseY;
  }

  if (dist(mouseX, mouseY, student2.studentX, student2.studentY) < 20) {
    student2.studentX = mouseX;
    student2.studentY = mouseY;
  }

  if (dist(mouseX, mouseY, student3.studentX, student3.studentY) < 20) {
    student3.studentX = mouseX;
    student3.studentY = mouseY;
  }

  if (dist(mouseX, mouseY, student4.studentX, student4.studentY) < 20) {
    student4.studentX = mouseX;
    student4.studentY = mouseY;
  }
}

