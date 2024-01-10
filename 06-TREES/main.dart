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

class Solution {
  bool validateBinaryTree(Node? node) {
    if (node == null) {
      return true;
    }
    if (node.val > double.negativeInfinity && node.val < double.infinity) {
      return true;
    }
    return false;
  }
}
