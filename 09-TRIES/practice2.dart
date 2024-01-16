class Persona {
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
