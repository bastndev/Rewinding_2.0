void main() {
  var root = TreeNode(4);
  root.left = TreeNode(2);
  root.right = TreeNode(7);
  root.left?.left = TreeNode(1);
  root.left?.right = TreeNode(3);
  root.right?.right = TreeNode(6);
  root.right?.left = TreeNode(9);

  print("         ${root.val}");
  print("   ${root.left!.val}         ${root.right!.val}");
  print(
      "${root.left?.left!.val}     ${root.left?.right!.val}   ${root.right?.right!.val}     ${root.right?.left!.val}");

print("==================");
  var inverseBinaryTree = InverseBinaryTree();
  inverseBinaryTree.reverseTree(root);
  print("         ${root.val}");
  print("   ${root.left!.val}         ${root.right!.val}");
  print(
      "${root.left?.left!.val}     ${root.left?.right!.val}   ${root.right?.right!.val}     ${root.right?.left!.val}");
}

class TreeNode {
  var val;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.val, {this.left, this.right});
}

class InverseBinaryTree {
  void reverseTree(TreeNode? root) {
    if (root == null) {
      return;
    }
    TreeNode? tmp = root.left;
    root.left = invertTree(root.right);
    root.right = invertTree(tmp);
  }

  TreeNode? invertTree(TreeNode? node) {
    return node;
  }
}
