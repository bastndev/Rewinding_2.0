import 'dart:collection'; // estructure de dates and Map, Set, Queue, List y LinkedList.

void main() {
  var root = Node(4);
  root.left = Node(2);
  root.right = Node(7);
  root.left?.left = Node(1);
  root.left?.right = Node(3);
  root.right?.right = Node(6);
  root.right?.left = Node(9);

  print("         ${root.val}");
  print("   ${root.left!.val}         ${root.right!.val}");
  print(
      "${root.left?.left!.val}     ${root.left?.right!.val}   ${root.right?.right!.val}     ${root.right?.left!.val}");

  print("====== LIST ======");
}

class Node {
  var val;
  Node? left;
  Node? right;
  Node(this.val, {this.left, this.right});
}
