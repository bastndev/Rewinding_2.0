//Example:
/*Input: [1,2,4,6], [5,2,8]
  Output: 6427
 */
void main() {
  final List<int> list1 = [1, 2, 4, 6];
  final List<int> list2 = [5, 2, 8];

  String listOne = list1.join();
  String listTwo = list2.join();

  final reverse = int.parse(listOne.split('').reversed.join());
  final reverse2 = int.parse(listTwo.split('').reversed.join());

  print('The list Reversed is: $reverse | $reverse2');

  final result = reverse + reverse2;
  print("The sum result is: $result");
}
