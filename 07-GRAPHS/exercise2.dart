import 'dart:collection';

void main() {
  CloneGraph cloneGraph = CloneGraph();

  Node node1 = Node(val: 1, neighbors: []);
  Node node2 = Node(val: 2, neighbors: []);
  Node node3 = Node(val: 3, neighbors: []);
  Node node4 = Node(val: 4, neighbors: []);

  node1.neighbors = [node2, node3];
  node2.neighbors = [node3];
  node3.neighbors = [node4];
  node4.neighbors = [node2];

  Node clonedNode1 = cloneGraph.cloneGraph(node1);
  Node clonedNode2 = clonedNode1.neighbors[0];
  Node clonedNode3 = clonedNode1.neighbors[1];
  Node clonedNode4 = clonedNode3.neighbors[0];

  assert(clonedNode1.val == 1);
  assert(clonedNode1 != node1);
  assert(clonedNode2.val == 2);
  assert(clonedNode2 != node2);
  assert(clonedNode3.val == 3);
  assert(clonedNode3 != node3);
  assert(clonedNode4.val == 4);
  assert(clonedNode4 != node4);

}

class Node {
  int val;
  List<Node> neighbors;

  Node({required this.val, required this.neighbors});
}

class CloneGraph {
  Node cloneGraph(Node node) {
    HashMap<int, Node> map = HashMap<int, Node>();
    return clone(node, map);
  }

  Node clone(Node? node, HashMap<int, Node> map) {
    if (node == null) return node!;

    if (map.containsKey(node.val)) return map[node.val]!;

    Node newNode = Node(val: node.val, neighbors: []);

    map[newNode.val] = newNode;
    for (Node n in node.neighbors) newNode.neighbors.add(clone(n, map));

    return newNode;
  }
}
