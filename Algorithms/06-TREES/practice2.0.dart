void main() {
  final List<int> list = [2, 3, 4, 6, 7, 8, 9, 10];
  print("====== LOOP ======");

  for (var lista = 0; lista < list.length; lista++) { //This type of loop is used when you need to have more precise control
    print("Hi: $lista");
  }

  for (var lista in list) { //This type of loop is used to iterate directly over the elements of a collection
    print("Hello: $lista");
  }
}
