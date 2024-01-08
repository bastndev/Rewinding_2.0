//Example:
/*Input: [1,2,4,6], [2,3,5] 
  Output: [1,2,2,3,4,5,6] 
 */

/* void main() {
  final List<int> list1 = [1, 2, 4, 6];
  final List<int> list2 = [2, 3, 5];

  List<int> uniList = list1 + list2;
  final  matte = uniList..sort();

  print("The list united is: $matte");
} */

/* void main() {
  final List<int> list1 = [1, 2, 4, 6];
  final List<int> list2 = [2, 3, 5];

  List<int> uniList = list1 + list2;
  final matte = uniList.toSet().toList()..sort();

  print("The list united and no repeated number is: $matte");
} */

/* void main() {
  List<int> numbers = [3, 1, 4, 1, 5, 9];

  numbers
    ..remove(1)
    ..add(2)
    ..sort();

  print("Modified list: $numbers");
}
 */
void main() {
  final List<int> list1 = [1, 2, 4, 6];
  final List<int> list2 = [2, 3, 5];

  List<int> uniList = list1 + list2;

  uniList = uniList.toSet().toList();
  uniList..sort();

  print("The list united and no repeated number is: $uniList");
}
