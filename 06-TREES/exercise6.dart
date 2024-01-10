void main() {
  var root = Node(4);
  root.left = Node(5);
  root.right = Node(7);
  root.left?.left = Node(1);
  root.left?.right = Node(3);
  root.left?.left?.left = Node(8);

  print("            ${root.val}");
  print("       ${root.left!.val}        ${root.right!.val}");
  print("   ${root.left?.left!.val}     ${root.left?.right!.val} ");
  print("${root.left?.left?.left!.val}");

  print("====== DEPTH ======");

  FirstCommonAncestor fca = FirstCommonAncestor();
  try {
    print(
        "firstCommonAncestor(1,7)= ${fca.firstCommonAncestor(root, Node(1), Node(7)).val}");
    print(
        "firstCommonAncestor(1,4)= ${fca.firstCommonAncestor(root, Node(1), Node(4)).val}");
  } catch (e) {
    print("Exception: $e");
  }
  print(
      "firstCommonAncestor(1,3)= ${fca.firstCommonAncestor(root, Node(1), Node(3)).val}");
}

class Node {
  var val;
  Node? left;
  Node? right;
  Node(this.val, {this.left, this.right});
}

class _AncestorNode {
  bool nodeFound = false;
  Node? ancestor;
}

class FirstCommonAncestor {
  Node firstCommonAncestor(Node? root, Node firstNode, Node secondNode) {
    try {
      return postOrderSearch(root, firstNode, secondNode).ancestor!;
    } catch (e) {
      throw Exception("Null");
    }
  }

  _AncestorNode postOrderSearch(Node? root, Node firstNode, Node secondNode) {
    if (root == null) {
      return _AncestorNode();
    }

    _AncestorNode leftResult =
        postOrderSearch(root.left, firstNode, secondNode);
    if (leftResult.ancestor != null) return leftResult;

    _AncestorNode rightResult =
        postOrderSearch(root.right, firstNode, secondNode);
    if (rightResult.ancestor != null) return rightResult;

    _AncestorNode result = _AncestorNode();

    if (leftResult.nodeFound && rightResult.nodeFound) {
      result.ancestor = root;
      result.nodeFound = true;
      return result;
    }

    result.nodeFound = root.val == firstNode.val ||
        root.val == secondNode.val ||
        leftResult.nodeFound ||
        rightResult.nodeFound;
    return result;
  }
}
