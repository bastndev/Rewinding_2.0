/* void main() {
  List<int> numbers = [4, 3, 2, 1];

  numbers.remove(2);

  print(numbers);
}
 */

// -FIXME: LOOP, while
/* void main() {
  final List<int> numbers = [4, 3, 2, 1];

  print('Original list: $numbers');

  while (numbers.contains(2)) {
    numbers.remove(2);
  }

  print('List after Delete 2: $numbers');
}
 */

//-TODO: Add number 8 last

/* void main() { 
  final List<int> numbers = [4, 3, 2, 1];

  numbers.add(8);

  print(numbers);
} */

void main() {
  final List<int> numbers = [4, 3, 2, 1];

  // final num numberAdd = numbers.insert(0,8);

  numbers.insert(0,8);

  print("The 8 number add to start: $numbers");
}
