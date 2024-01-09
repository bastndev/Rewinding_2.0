//Pila (Stack): last enter, first exit

class Pila {
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


//Cola (Queue): fist enter first exit
/* class Cola {
  List _elements = [];

  void enqueue(dynamic element) {
    _elements.add(element);
  }

  dynamic dequeue() {
    if (_elements.isNotEmpty) {
      return _elements.removeAt(0);
    } else {
      return null;
    }
  }

  bool isEmpty() {
    return _elements.isEmpty;
  }
}

void main() {
  Cola miCola = Cola();

  miCola.enqueue(1);
  miCola.enqueue(2);
  miCola.enqueue(3);

  while (!miCola.isEmpty()) {
    print("Element Queue: : ${miCola.dequeue()}");
  }
}
 */