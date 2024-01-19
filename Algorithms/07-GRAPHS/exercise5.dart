void main() {
  RedundantConnection redundantConnection = new RedundantConnection();

  List<List<int>> first = [
    [1, 2],
    [1, 3],
    [2, 3]
  ];
  print("First: ${redundantConnection.findRedundantConnection(first)}");

  List<List<int>> second = [
    [1, 2],
    [2, 3],
    [3, 4],
    [1, 4],
    [1, 5]
  ];
  print("Second: ${redundantConnection.findRedundantConnection(second)}");
}

class RedundantConnection {
  List<int>? findRedundantConnection(List<List<int>> edges) {
    List<Set<int>> adjList = List.generate(1000, (_) => <int>{});

    for (List<int> edge in edges) {
      int first = edge[0];
      int second = edge[1];
      if (dfs(first, second, -1, adjList)) return edge;
      adjList[first].add(second);
      adjList[second].add(first);
    }
    return null;
  }

  bool dfs(int first, int second, int previous, List<Set<int>> adjList) {
    if (first == second) return true;
    for (int other in adjList[first]) {
      if (other == previous) continue;
      if (dfs(other, second, first, adjList)) return true;
    }
    return false;
  }
}
