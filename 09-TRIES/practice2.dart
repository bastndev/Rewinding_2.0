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

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

void main() {
  Person person = Person('Gohit', 25);
  print("My name is ${person.name} I'm ${person.age} years old ");
}
