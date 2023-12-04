//--- --- -TODO: variables, SWAP VALOR WHIT TIME
/* void main() {
  // Numeric variables
  int age = 25;
  double height = 1.75;

  // Text variables
  String name = 'John';

  // Boolean variable
  bool isStudent = true;

  // List (Array)
  List<String> colors = ['red', 'green', 'blue'];

  // Map (Dictionary)
  Map<String, dynamic> person = {
    'name': 'Anna',
    'age': 30,
    'student': false,
  };

  // Print values
  print('Name: $name, Age: $age, Height: $height');
  print('Is student: $isStudent');
  print('Colors: $colors');
  print('Person information: $person');
} */

//--- --- -FIXME: const
// the constants never change, Example: PI 3.1415

// --- -TODO: Practice

/* void main() {
  String name = 'lucas';
  int age = 21;

  print("My name in $name and I'm age: $age");
} */

/* void main() {
  int n1 = 2;
  int n2 = 5;
  int n3 = 0;

  n3 = n2 - n1;
  n2 = 2;
  n1 = n1 + n3;
  n3 = n2 * n3;
  n2 = n3 ~/ n1;;

  print("The valor of n1: $n1");
  print("The valor of n2: $n2");
  print("The valor of n3: $n3");
} */

/* void main() {
  int n1 = 2, n2 = 5, n3 = 0;

  n3 = n2 - n1;
  n2 = 2;
  n1 = n1 + n3;
  n3 = n2 * n3;
  n2 = n3 ~/ n1;

  print("El valor de n1 = $n1");
  print("El valor de n2 = $n2");
  print("El valor de n3 = $n3");
} */

/* class MathematicalOperations {
  int n1, n2, n3;

  MathematicalOperations(this.n1, this.n2) : n3 = 0;

  void performOperations() {
    n3 = n2 - n1;
    n2 = 2;
    n1 = n1 + n3;
    n3 = n2 * n3;
    n2 = n3 ~/ n1;
  }

  void printValues() {
    print("The value of n1 = $n1");
    print("The value of n2 = $n2");
    print("The value of n3 = $n3");
  }
}

void main() {
  MathematicalOperations operations = MathematicalOperations(2, 5);
  operations.performOperations();
  operations.printValues();
}
 */

// --- --- -TODO: Practice const

/* void main() {
  const pi = 3.1415;
  double n1 = 1.3, n2 = 7.2, n3;

  n3 = pi;
  n2 = n3 + pi;
  n1 = n2 / n1;
  n3 = n2 + n1;
  n2 = n2 - pi;

  print("N1:$n1");
  print("N2:$n2");
  print("N3:$n3");
} */

/* void main() {
  const pi = 3.1415;
  double n1 = 2.5, n2 = 7.2, n3;
  n3 = pi;
  n2 = n3 + pi;
  n1 = n2 / n1;
  n3 = n2 + n1;
  n2 = n2 - pi;

  print("Initial value of N1: $n1");
  print("Updated value of N2: $n2");
  print("Final value of N3: $n3");
}
 */

//--- -TODO: if and else
/* void main() {
  int dayOfWeen = 2;

  switch (dayOfWeen) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    default:
      print("Día no valid");
  }
} */

void main() {
  int note = 2;

  switch (note) {
    case 1:
      print('Disapproved');

    case 2:
      print('Approved');

    case 3:
      print('Excellent');
  }
}
