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

void main() { 
  final age = 25;
  final name = "Gohit";
  print(age.runtimeType);
  print(name.runtimeType);
}