void main() {
  var first = Node(4);
  first.left = Node(5);
  first.right = Node(7);
  first.left?.left = Node(1);
  first.left?.right = Node(3);
  first.left?.left?.left = Node(8);

  var second = Node(5);
  second.left = Node(1);
  second.right = Node(3);
  second.left?.left = Node(8);

  print("            ${first.val}");
  print("       ${first.left!.val}        ${first.right!.val}");
  print("   ${first.left?.left!.val}     ${first.left?.right!.val} ");
  print("${first.left?.left?.left!.val}");

  print("  --- --- --- --- ---");

  print("            ${second.val}");
  print("       ${second.left!.val}        ${second.right!.val}");
  print("   ${second.left?.left!.val} ");

  print("====== SUB TREE ======");

  final result = IsSubTree().isSubTree(first, second);
  print("Sub Tree is: $result");
}

class Node {
  var val;
  Node? left;
  Node? right;
  Node(this.val, {this.left, this.right});
}

class IsSubTree {
  bool isSubTree(Node? first, Node? second) {
    StringBuffer sb1 = new StringBuffer();
    StringBuffer sb2 = new StringBuffer();

    _preOrder(first, sb1);
    _preOrder(second, sb2);

    return sb1.toString().contains(sb1.toString());
  }

  void _preOrder(Node? node, StringBuffer sb) {
    if (node == null) {
      sb.write("X");
      return;
    }
    sb.write(node.val);
    _preOrder(node.left, sb);
    _preOrder(node.right, sb);
  }
}
