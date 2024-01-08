// Example
// Input [1,2,2,3,4,1]
// Output [1,2,3,4]

/* void main() {
  final List<int> list = [1, 2, 2, 3, 4, 1];

  List<int> unList = [];

  for (int i = 0; i < list.length; i++) {
    if (!unList.contains(list[i])) {
      unList.add(list[i]);
    }
  }

  print("The new numbers are: $unList");
} */

void main() {
  final List<int> list = [1, 2, 2, 3, 4, 1, 5, 5, 5, 5, 5, 5];

  List<int> unList = list.toSet().toList();

  print("The new numbers are: $unList");
}
