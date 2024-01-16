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
void main() {
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
