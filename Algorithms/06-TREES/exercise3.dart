import 'dart:math';

void main() {
  var root = Node(4);
  root.left = Node(2);
  root.right = Node(7);
  root.left?.left = Node(1);
  root.left?.right = Node(3);
  root.left?.left?.left = Node(8);

  print("            ${root.val}");
  print("       ${root.left!.val}        ${root.right!.val}");
  print("   ${root.left?.left!.val}     ${root.left?.right!.val} ");
  print("${root.left?.left?.left!.val}");

  print("====== DEPTH ======");
  final result = MaximumDepth().maxDepth(root);
  print("The maximum depth is: $result");
}

class Node {
  var val;
  Node? left;
  Node? right;
  Node(this.val, {this.left, this.right});
}

class MaximumDepth {
  int maxDepth(Node? root) {
    if (root == null) return 0;

    int depthLeft = maxDepth(root.left) + 1;
    int depthRight = maxDepth(root.right) + 1;

    return max<int>(depthLeft, depthRight);
  }
}
