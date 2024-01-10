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
}

class Node {
  var val;
  Node? left;
  Node? right;
  Node(this.val, {this.left, this.right});
}

class MaximumDepth {
  
}