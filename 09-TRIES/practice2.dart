/* class Persona {
  String name;
  int age;

  Persona(this.name, this.age);

  void showAge() {
    print("My name is $name I'm $age years old ");
  }
}

void main() {
  Persona persona = Persona('Gohit Bastian', 25);
  persona.showAge();
}
 */

/* class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

void main() {
  Person person = Person('Gohit', 25);
  print("My name is ${person.name} I'm ${person.age} years old ");
}
 */

/* class Student {
  String name;
  List<Course> courses;

  Student(this.name, this.courses);

  void enroll(Course course) {
    courses.add(course);
    course.students.add(this);
  }
}

class Course {
  String name;
  List<Student> students;

  Course(
    this.name,
  ) : students = [];
}

void main() {
  var dartCourse = Course('Dart');
  var flutterCourse = Course('Flutter');

  var student = Student('Gohit', []);

  student.enroll(dartCourse);
  student.enroll(flutterCourse);

  print('The student ${student.name} is enrolled in the following courses:');
  for (var course in student.courses) {
    print(course.name);
  }
}
 */

class Hero {
  final String name;
  final String power;

  Hero(this.name, this.power);

  @override
  String toString() {
    return '$name - $power';
  }
}

void main() {
  
}
