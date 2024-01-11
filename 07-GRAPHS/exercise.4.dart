void main() {
  NumberOfProvinces numberOfProvinces = new NumberOfProvinces();

  List<List<int>> first = [
    [1, 1, 0],
    [1, 1, 0],
    [0, 0, 1]
  ];
  assert(2 == numberOfProvinces.numberOfProvinces(first));
  List<List<int>> second = [
    [1, 0, 0],
    [0, 1, 0],
    [0, 0, 1]
  ];
  assert(3 == numberOfProvinces.numberOfProvinces(second));
}

class NumberOfProvinces {
  int numberOfProvinces(List<List<int>> isConnected) {
    List<bool> visited = List.filled(isConnected.length, false);
    int count = 0;
    for (int i = 0; i < isConnected.length; i++) {
      if (!visited[i]) {
        count++;
        _dfs(isConnected, visited, i);
      }
    }
    return count;
  }

  void _dfs(List<List<int>> isConnected, List<bool> visited, int city) {
    for (int other = 0; other < isConnected[city].length; other++) {
      if (other != city && isConnected[city][other] == 1 && !visited[other]) {
        visited[other] = true;
        _dfs(isConnected, visited, other);
      }
    }
  }
}
