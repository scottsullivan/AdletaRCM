int b1v = 0;
int b2v = 0;
int b3v = 0;

Student student1 = new Student(50, 290, 200, "OS Grad", 1);
Student student2 = new Student(150, 290, 150, "IS Grad", 2);
Student student3 = new Student(250, 290, 100, "OS U-Grad", 3);
Student student4 = new Student(350, 290, 50, "IS U-Grad", 4);

Building building1 = new Building(100, 100, 150, 150, "Building 1");
Building building2 = new Building(300, 100, 150, 150, "Building 2");
Building building3 = new Building(500, 100, 150, 150, "Building 3");

Student[] students = new Student[4];
Building[] buildings = new Building[3];

void setup() {
  size(600, 300);
  background(255);
  smooth();
  noStroke();

  students[0] = student1;
  students[1] = student2;
  students[2] = student3;
  students[3] = student4;

  buildings[0] = building1;
  buildings[1] = building2;
  buildings[2] = building3;
}

void draw() {
  background(255);

  rectMode(CENTER);
  textAlign(CENTER);

  noStroke();
  for (int i = 0; i < students.length; i++) {
    students[i].display();
    for (int r = 0; r < buildings.length; r++) {
      buildings[r].display();

      if (dist(students[i].studentX, students[i].studentY, buildings[r].buildingX, buildings[r].buildingY) < 85) {
        buildings[r].value = students[i].value;
      }
    }
  }
  
}

void mouseDragged() {
  for (int i = 0; i < students.length; i++) {
    if (dist(mouseX, mouseY, students[i].studentX, students[i].studentY) < 20) {
      students[i].studentX = mouseX;
      students[i].studentY = mouseY;
    }
  }
}

