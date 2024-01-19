//Before:
/* void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  list.clear();
  list.add(10);
  list.addAll([11, 12, 13]);
  list.removeAt(1);
  list.insert(3, 35);

  print("Traditional list: $list");
} */

void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  
  list
    ..clear()
    ..add(10)
    ..addAll([11, 12, 13])
    ..removeAt(1)
    ..insert(3, 35);

  print("Traditional list: $list");
}
