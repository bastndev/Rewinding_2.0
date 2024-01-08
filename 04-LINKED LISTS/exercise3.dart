//Example:
/*Input: [1,2,4,6], n = 2 
  Output: 4 
 */

/* void main() {
  final List<int> list = [1, 2, 4, 6];

  print("The number is: ${list[list.length - 2]}");
} */

/* void main() {
  final List<int> list = [1, 2, 4, 6, 8];

  print("The number is: ${list[list.length - 2]}");
}
 */

/* void main() {
  final List<int> list = [1, 2, 4, 6, 8, 10];

  final newNumber = list[list.length - 2];

  print("The number is: $newNumber");
}
 */

void main() {
  final List<int> list = [1, 2, 4, 6, 8, 10, 12];
  final n = 2;

  if (n > 0 && n <= list.length) {
    final newNumber = list[list.length - n - 0];
    print("The second to last number is: $newNumber");
  } else {
    print(
        "The value $n does not correspond to a second-to-last element in the list.");
  }
}
