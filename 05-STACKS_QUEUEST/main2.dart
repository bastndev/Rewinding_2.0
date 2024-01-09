//Pila (Stack):
/* class Pila {
  List _elements = [];

  void push(dynamic element) {
    _elements.add(element);
  }

  dynamic pop() {
    if (_elements.isNotEmpty) {
      return _elements.removeLast();
    } else {
      return null; 
    }
  }

  bool isEmpty() {
    return _elements.isEmpty;
  }
}

void main() {
  Pila miPila = Pila();

  miPila.push(1);
  miPila.push(2);
  miPila.push(3);

  while (!miPila.isEmpty()) {
    print("Element stack: ${miPila.pop()}");
  }
}
 */

//Cola (Queue):