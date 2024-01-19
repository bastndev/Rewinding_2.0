class Graph {
  Map<String, List<String>> adjacency = {};

  void addVertex(String vertex) {
    if (!adjacency.containsKey(vertex)) {
      adjacency[vertex] = [];
    }
  }

  void addEdge(String start, String end) {
    if (adjacency.containsKey(start) && adjacency.containsKey(end)) {
      adjacency[start]!.add(end);
      adjacency[end]!.add(start);
    }
  }

  void printGraph() {
    adjacency.forEach((vertex, edges) {
      print('$vertex: $edges');
    });
  }
}

void main() {
  Graph graph = Graph()
    ..addVertex('A')
    ..addVertex('B')
    ..addVertex('C')
    ..addEdge('A', 'B')
    ..addEdge('A', 'C');
  graph.printGraph();
}
