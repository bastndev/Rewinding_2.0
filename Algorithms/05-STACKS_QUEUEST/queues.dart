//-TODO: Cola FIFO

/* class ColaConDosPilas {
  List _pilaEntrance = [];
  List _pilaExit = [];

  void enqueue(dynamic element) {
    _pilaEntrance.add(element);
  }

  dynamic dequeue() {
    if (_pilaExit.isEmpty) {
      while (_pilaEntrance.isNotEmpty) {
        _pilaExit.add(_pilaEntrance.removeLast());
      }
    }

    return _pilaExit.isNotEmpty ? _pilaExit.removeLast() : null;
  }

  bool isEmpty() {
    return _pilaEntrance.isEmpty && _pilaExit.isEmpty;
  }
}

void main() {
  ColaConDosPilas miCola = ColaConDosPilas();

  miCola.enqueue(1);
  miCola.enqueue(2);
  miCola.enqueue(3);

  print("Remove Element of the Queues: ${miCola.dequeue()}");
  print("Remove Element of the Queues: ${miCola.dequeue()}");

  miCola.enqueue(4);
  miCola.enqueue(5);

  while (!miCola.isEmpty()) {
    print("Remove Element of the Queues: ${miCola.dequeue()}");
  }
}
 */

class ColaBasic {
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
  ColaBasic miCola = ColaBasic();

  miCola.enqueue('Maria');
  miCola.enqueue('Juan');
  miCola.enqueue('Lucas');

  print("Elementos de la cola:");

  while (!miCola.isEmpty()) {
    print(miCola.dequeue());
  }
}
