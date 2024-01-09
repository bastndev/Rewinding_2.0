class Stack {
   List<int> _stack = [];

  bool get isEmpty => _stack.isEmpty;

  void push(int value) => _stack.add(value);

  int pop() {
    if (isEmpty) {
      throw Exception("stack is empty pop");
    }
    return _stack.removeLast();
  }

  int get top {
    if (isEmpty) {
      throw Exception("stack is empty pop2");
    }
    return _stack.last;
  }
}

void sortStack(Stack stack) {
  Stack tempStack = Stack();

  while (!stack.isEmpty) {
    int temp = stack.pop();

    while (!tempStack.isEmpty && tempStack.top > temp) {
      stack.push(tempStack.pop());
    }
    tempStack.push(temp);
  }
  while (!tempStack.isEmpty) {
    stack.push(tempStack.pop());
  }
}

void main() {
  Stack stack = Stack();
  stack.push(9);
  stack.push(1);
  stack.push(4);
  stack.push(2);

  sortStack(stack);

  while (!stack.isEmpty) {
    print(stack.pop());
  }
}
