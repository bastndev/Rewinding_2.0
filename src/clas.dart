class SumNumber {
  int num1;
  int num2;

  SumNumber(this.num1, this.num2);

  int sum() => num1 + num2;
}

void main() {
  final sum1 = SumNumber(10, 5);
  final result = sum1.sum();
  print("The sum of ${sum1.num1} and ${sum1.num2} is: $result");
}
