import 'dart:collection';

void main() {
  Graph graph = Graph();

  GraphNode node0 = graph.getOrCreateNode("0");
  GraphNode node1 = graph.getOrCreateNode("1");
  GraphNode node2 = graph.getOrCreateNode("2");
  GraphNode node3 = graph.getOrCreateNode("3");
  GraphNode node4 = graph.getOrCreateNode("4");

  graph.addEdge(start: "0", end: "1");
  graph.addEdge(start: "1", end: "2");
  graph.addEdge(start: "2", end: "0");
  graph.addEdge(start: "2", end: "3");
  graph.addEdge(start: "3", end: "2");
  graph.addEdge(start: "4", end: "6");
  graph.addEdge(start: "5", end: "4");
  graph.addEdge(start: "6", end: "5");

  RouteBetweenNodes route = RouteBetweenNodes();

  Graph graph2 = Graph();
  graph2.addEdge(start: "4", end: "1");
  graph2.addEdge(start: "4", end: "3");
  graph2.addEdge(start: "3", end: "2");
  graph2.addEdge(start: "2", end: "1");

  node0 = graph2.getOrCreateNode("0");
  node1 = graph2.getOrCreateNode("1");
  node3 = graph2.getOrCreateNode("3");
  node4 = graph2.getOrCreateNode("4");

  print("isRouteBetween(2, 4) = ${route.isRouteBetween(graph2, node2, node4)}");
  print("isRouteBetween(3, 1) = ${route.isRouteBetween(graph2, node3, node1)}");
  print("isRouteBetween(0, 1) = ${route.isRouteBetween(graph2, node0, node1)}");
  print("isRouteBetween(0, 0) = ${route.isRouteBetween(graph2, node0, node0)}");
}

class GraphNode {
  String name;
  Map<String, GraphNode> adjacent = {};
  GraphNodeStatus status = GraphNodeStatus.Unvisited;

  GraphNode(this.name);
}

enum GraphNodeStatus { Unvisited, Visited }

class Graph {
  Map<String, GraphNode> nodes = {};

  GraphNode getOrCreateNode(String name) {
    if (!nodes.containsKey(name)) {
      nodes[name] = GraphNode(name);
    }
    return nodes[name]!;
  }

  void addEdge({required String start, required String end}) {
    GraphNode startNode = getOrCreateNode(start);
    GraphNode endNode = getOrCreateNode(end);
    startNode.adjacent[end] = endNode;
  }
}

class RouteBetweenNodes {
  bool isRouteBetween(Graph g, GraphNode start, GraphNode end) {
    for (var node in g.nodes.values) {
      node.status = GraphNodeStatus.Unvisited;
    }

    if (start == end) return true;

    Queue<GraphNode> queue = Queue<GraphNode>();
    queue.add(start);

    while (queue.isNotEmpty) {
      GraphNode next = queue.removeFirst();

      if (end == next) return true;

      for (GraphNode n in next.adjacent.values) {
        if (n.status != GraphNodeStatus.Visited) {
          queue.add(n);
          n.status = GraphNodeStatus.Visited;
        }
      }
    }
    return false;
  }
}
