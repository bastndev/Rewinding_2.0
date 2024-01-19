//-TODO: Boolean
/* void main() {
  bool active = true;
  // print("This is Active: $active");

  //Control structure

  if (active == true) {
    print("This is active");
  } else {
    print("Sorry is not active");
  }
} */

/* void main() {
  bool active = true;

  active = !active;
  //Control structure || Condition structure
  if (active == true) {
    print("This is active");
  } else {
    print("Sorry is not active");
  }
}
 */

/* void main() {
  bool active = true;

  active = !active;
  //equivalent
  if (active) {
    print("This is active");
  } else {
    print("Sorry is not active");
  }
}
 */

/* void main() {
  bool active = true;

  print(active);
  //equivalent
  if (!active) {
    print("This is active");
  } else {
    print("Sorry is NOT active");
  }
}
 */

/* void main() {
  int number = 3;

  if (number % 2 == 0) {
    print("par");
  } else {
    print("Is not part");
  }
}
 */

/* void main() {
  bool valor1 = true;
  bool valor2 = false;
  bool valor3 = true;
  print(valor1 && valor2 && valor3);
  print(valor1 || valor2 || valor3);
} */

class Car {
  String make;
  String model;
  String year;
  bool hasABS;

  // Constructor
  Car(this.make, this.model, this.year, this.hasABS);

  // Method to display car details
  void displayDetails() {
    print('Make: $make');
    print('Model: $model');
    print('Year: $year');
    print('Has ABS?: ${hasABS ? 'Yes' : 'No'}');
  }
}

void main() {
  // Create an instance of Car
  Car myCar = Car('Toyota', 'Corolla', '2020', true);

  // Display car details
  myCar.displayDetails();
}
