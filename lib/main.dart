/* void main() {
  for (int i = 1; i < 5; i++) {
    Future.delayed(Duration(seconds: i), () {
      print("Hello $i");
    });
  }
}
 */

/* void main() {
  var i = 20;
  print("fibonacci($i) = ${fibonacci(i)}");
}

int fibonacci(int n) {
  return n < 2 ? n : (fibonacci(n - 1) + (fibonacci(n - 2)));
}
 */

/* void main(List<String> arguments) {
  print("Hello World!");
  print("Hello World!");
  print("Hello World!");
}
 */
/*   final age = 25;

void main() { 
  final name = "Gohit";
  print(age.runtimeType);
  print(name.runtimeType);
} */

/* 
void main() { 
  bool name = false;
  print("I have a name $name");
} */

/* void main() {
  final String name = 'Gohit';
  // name = 'pedro';

  print(name);
}
 */

void main() {
  int one = 1;
  double two = 2.2;
  String name = "Gohit";
  bool result = true;
  var four = 4;
  dynamic value = 5;

  print(one.runtimeType);
  print(two.runtimeType);
  print(name.runtimeType);
  print(result.runtimeType);
  print(four.runtimeType);
  print(value.runtimeType);
}
