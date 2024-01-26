/* void main() {
  List list1 = [12, 23];
  List list2 = ['Juan', 'Maria'];

  List listToList = [
    [10, 24],
    list2,
    [12, 546, 7]
  ];

  var myName = list2[0];
  var size = listToList.length;
  print("my name is $myName");
  print("The size list is $size");

  final result = listToList[1][1];
  print("Name with my friend is $result and she have ${list1[1]} years old");
}
 */

void main() {
  List mySecondList = ['lucas', 'Hernan'];

  var fixedList = List.filled(4, '', growable: false);
  fixedList[0] = 'Gohit';
  fixedList[1] = mySecondList[0];
  print(fixedList);

  print(mySecondList.length);
  mySecondList.add('Hello');
  print(mySecondList);
  print(mySecondList.length);
}
