class TreeNode {
  int? val;
  TreeNode? left;
  TreeNode? right;

  TreeNode() {}

  TreeNode.withValue(int val) {
    this.val = val;
  }
}

class BinaryTreeMaxPathSumSolution {
  late double max = double.negativeInfinity;

  double maxPathSum(TreeNode? root) {
    maxPathSumHelper(root);
    return max;
  }

  double maxPathSumHelper(TreeNode? root) {
    if (root == null) return 0;

    double left = maxPathSumHelper(root.left);
    double right = maxPathSumHelper(root.right);

    left = left > 0 ? left : 0;
    right = right > 0 ? right : 0;

    max = (max > root.val! + left + right) ? max : (root.val! + left + right);

    return root.val! + (left > right ? left : right);
  }
}

void main() {
  BinaryTreeMaxPathSumSolution solution = BinaryTreeMaxPathSumSolution();

  TreeNode root2 = TreeNode.withValue(-12);
  root2.left = TreeNode.withValue(5);
  root2.right = TreeNode.withValue(3);
  root2.right!.left = TreeNode.withValue(1);
  root2.right!.right = TreeNode.withValue(4);

  print(solution.maxPathSum(root2).toInt());
}
