//Pilas = Stack
class Pilas {
  List<int> elements = [];

  void push(int x) {
    elements.add(x);
    print('$x ha sido agregado a la pila.');
  }

  void pop() {
    if (elements.isEmpty) {
      print('La pila está vacía.');
    } else {
      int removedElement = elements.removeLast();
      print('$removedElement ha sido eliminado de la pila.');
    }
  }

  void printStack() {
    print('Contenido de la pila: $elements');
  }
}

void main() {
  var pila = Pilas();
  pila.push(5);
  pila.push(4);
  pila.push(3);
  pila.push(2);

  pila.printStack();

  pila.pop();
  pila.printStack();
}
