void main() {
  var root = Node(4);
  root.left = Node(2);
  root.right = Node(7);
  root.left?.left = Node(1);
  root.left?.right = Node(3);
  root.left?.left?.left = Node(8); //Commend for true

  print("            ${root.val}");
  print("       ${root.left!.val}        ${root.right!.val}");
  print("   ${root.left?.left!.val}     ${root.left?.right!.val} ");
  print("${root.left?.left?.left!.val}"); //Commend for true

  print("====== TRUE OR FALSE ======");

  final result = ValidateBST().isValidBST(root);
  print("This result is: $result ");
}

class Node {
  var val;
  Node? left;
  Node? right;
  Node(this.val, {this.left, this.right});
}

class ValidateBST {
  bool isValidBST(Node? root, [int? min, int? max]) {
    if (root == null) return true;
    if ((min != null && root.val <= min) || (max != null && root.val > max))
      return false;

    return isValidBST(root.left, min, root.val) &&
        isValidBST(root.right, root.val, max);
  }
}
