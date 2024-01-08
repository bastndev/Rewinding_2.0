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

void main() {
  final List<int> list = [1, 2, 4, 6, 8, 10];

  final newNumber = list[list.length - 2];

  print("The number is: $newNumber");
}
