// - - - - - - - - - - - - - - - - - - - - - - - 
// ADLETA RCM MODEL v03 06-23-13
// BY SCOTT SULLIVAN / GOINVO.COM
// - - - - - - - - - - - - - - - - - - - - - - -

// FEATURES TO ADD

// - - FUNCTIONAL
// Ability to add more students than four
// Arraylist functionality to add and remove more students
// Second "page" to set values for students (among other future variables)
// Ability to deal with multiple students in "crowded" building

// - - DESIGN
// Is dragging students necessasary? maybe just +/- for each student type on each school
// Genera "school" design needs readouts of student totals


// - - - - - - - - - - - - - - - - - - - - - - - 
// LIBRARIES
// - - - - - - - - - - - - - - - - - - - - - - - 
// none


// - - - - - - - - - - - - - - - - - - - - - - - 
// GLOBAL VARIABLES
// - - - - - - - - - - - - - - - - - - - - - - - 
Student student1 = new Student(50, 290, 200, "OS Grad", 1);
Student student2 = new Student(150, 290, 150, "IS Grad", 2);
Student student3 = new Student(250, 290, 100, "OS U-Grad", 3);
Student student4 = new Student(350, 290, 50, "IS U-Grad", 4);

Building building1 = new Building(100, 100, 150, 150, "Building 1", 1);
Building building2 = new Building(300, 100, 150, 150, "Building 2", 2);
Building building3 = new Building(500, 100, 150, 150, "Building 3", 3);

Student[] students = new Student[4];
Building[] buildings = new Building[3];

// - - - - - - - - - - - - - - - - - - - - - - - 
// SETUP
// - - - - - - - - - - - - - - - - - - - - - - - 
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


// - - - - - - - - - - - - - - - - - - - - - - - 
// DRAW LOOP
// - - - - - - - - - - - - - - - - - - - - - - - 
void draw() {
  background(255);
  frame.setTitle(int(frameRate) + " fps");

  for (int i = 0; i < students.length; i++) {
    students[i].display();
  }

  for (int r = 0; r < buildings.length; r++) {
    buildings[r].display();
    buildings[r].evaluate();
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

