bool isEmpty(String c) {
  List<String> pila = [];
  Map<String, String> map = {")": "(", "}": "{", "]": "["};

  for (int i = 0; i < c.length; i++) {
    String character = c[i];
    if (map.containsKey(character)) {
      String elementTop = pila.isEmpty ? "#" : pila.removeLast();
      if (map[character] != elementTop) {
        return false;
      }
    } else {
      pila.add(character);
    }
  }
  return pila.isEmpty;
}

void main() {
  print(isEmpty("((){})"));
  print(isEmpty("({}])"));
}
