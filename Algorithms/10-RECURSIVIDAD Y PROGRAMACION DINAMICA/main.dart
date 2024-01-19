//-TODO: is delayed

/* void main() {
  int fibonacci(int n) {
    if (n < 2) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  print(fibonacci(50));
}
 */

// -TODO: is so fast
/* void main() {
  List<int> memo = List<int>.filled(1000, -1);
  int fibonacciMemo(int n) {
    if (n < 2) return n;

    if (memo[n] == -1) {
      memo[n] = fibonacciMemo(n - 2) + fibonacciMemo(n - 1);
    }
    return memo[n];
  }

  print(fibonacciMemo(50));
}
 */

// -TODO: Method Bottom Up

int fibonacciBottomUp(int n) {
  if (n < 2) return n;

  int previousOfPrevious = 0;
  int previous = 1;

  for (int i = 2; i < n; i++) {
    int current = previous + previousOfPrevious;
    previousOfPrevious = previous;
    previous = current;
  }

  return previous + previousOfPrevious;
}

void main() {
  print(fibonacciBottomUp(50));
}
