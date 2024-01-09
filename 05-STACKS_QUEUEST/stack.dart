/* class FilaBanco { //Fila No pIla
  List<String> _clients = [];

  void addCustomer(String name) {
    _clients.add(name);
    print("$name se unio a la fila.");
  }

  void serveCustomer() {
    if (_clients.isNotEmpty) {
      String customerServe = _clients.removeAt(0);
      print("$customerServe it was attended.");
    } else {
      print("The row is empty. There are no clients to serve.");
    }
  }

  bool thisVoid() {
    return _clients.isEmpty;
  }
}

void main() {
  FilaBanco filaBanco = FilaBanco();

  filaBanco.addCustomer("Customer1");
  filaBanco.addCustomer("Customer2");
  filaBanco.addCustomer("Customer3");

  while (!filaBanco.thisVoid()) {
    filaBanco.serveCustomer();
  }
}
 */