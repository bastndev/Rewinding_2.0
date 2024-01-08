/* void main() {
  List<int> numbers = [4, 3, 2, 1];

  numbers.remove(2);

  print(numbers);
}
 */

// -TODO: LOOP, while
void main() {
  final List<int> numbers = [4, 3, 2, 1];

  print('Original list: $numbers');

  while (numbers.contains(2)) {
    numbers.remove(2);
  }

  print('List after Delete 2: $numbers');
}
