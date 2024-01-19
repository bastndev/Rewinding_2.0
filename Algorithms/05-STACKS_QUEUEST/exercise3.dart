class MinStack {
  final List<int> stack = [];
  final List<int> minStack = [];

  void push(int x) {
    stack.add(x);
    if (minStack.isEmpty || x <= minStack.last) {
      minStack.add(x);
    }
  }

  void pop() {
    if (stack.isNotEmpty) {
      int poppedElement = stack.removeLast();
      if (minStack.isNotEmpty && minStack.last == poppedElement) {
        minStack.removeLast();
      }
    }
  }

  int? top() {
    if (stack.isNotEmpty) {
      return stack.last;
    }
    return null;
  }

  int? getMin() {
    if (minStack.isNotEmpty) {
      return minStack.last;
    }
    return null;
  }
}

void main() {
  var minStack = MinStack();
  minStack.push(0);
  minStack.push(2);
  minStack.push(100);
  minStack.push(10);
  print('El valor en la cima de la pila es: ${minStack.top()}');
  print('El valor mínimo en la pila es: ${minStack.getMin()}');
  minStack.pop();
  print("");
  print(
      'Después de hacer pop, el valor en la cima de la pila es: ${minStack.top()}');
  print(
      'Después de hacer pop, el valor mínimo en la pila es: ${minStack.getMin()}');
}
