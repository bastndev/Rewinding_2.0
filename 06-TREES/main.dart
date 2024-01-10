void main() {
  var node = Node(2);
  node.left = Node(1);
  node.right = Node(3);

  print(node.val);
  print(node.left!.val);
  print(node.right!.val);
}

class Node {
  var val;
  Node? left;
  Node? right;

  Node(this.val, {this.left, this.right});
}

