//-TODO: Cola

class ColaConDosPilas {
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

  print("Remove Element of the Queues : ${miCola.dequeue()}");
  print("Remove Element of the Queues : ${miCola.dequeue()}");

  miCola.enqueue(4);
  miCola.enqueue(5);

  while (!miCola.isEmpty()) {
    print("Remove Element of the Queues : ${miCola.dequeue()}");
  }
}
