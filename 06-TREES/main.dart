/* void main() {
  var node = Node(2);
  node.left = Node(3);
  node.right = Node(1);

  print(node.val);
  print(node.left!.val);
  print(node.right!.val);

  var solution = Solution();
  print("The Node is: ${solution.validateBinaryTree(node)}");
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
 */

//-TODO: letCode

void main() {
  var node = TreeNode(2);
  node.left = TreeNode(3);
  node.right = TreeNode(1);

  print(node.val);
  print(node.left!.val);
  print(node.right!.val);

  var solution = Solution();
  print("The Node is: ${solution.isValidBST(node)}");
}

class TreeNode {
  var val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, {this.left, this.right});
}

class Solution {
  bool isValidBST(TreeNode? root) {
    return isValidBSTHelper(root, double.negativeInfinity, double.infinity);
  }

  bool isValidBSTHelper(TreeNode? root, double low, double high) {
    if (root == null) {
      return true;
    }
    var value = root.val.toDouble();
    if ((value > low && value < high) &&
        isValidBSTHelper(root.left, low, value) &&
        isValidBSTHelper(root.right, low, high)) {
      return true;
    }
    return false;
  }
}
