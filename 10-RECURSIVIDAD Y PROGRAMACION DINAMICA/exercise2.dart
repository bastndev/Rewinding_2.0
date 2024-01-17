class SetSubset {
  List<List<int>> subsets(List<int> set) {
    List<List<int>> result = [];
    result.add([]);
    for (int element in set) {
      _duplicationsSubsetElement(element, result);
    }
    return result;
  }

  void _duplicationsSubsetElement(int element, List<List<int>> result) {
    int currentSize = result.length;
    for (int i = 0; i < currentSize; i++) {
      List<int> newSubset = List.from(result[i]);
      newSubset.add(element);
      result.add(newSubset);
    }
  }
}

void main() {
  SetSubset setSubsets = SetSubset();

  List<int> set = [1, 2, 3];
  List<List<int>> result = setSubsets.subsets(set);
  print(result.contains([1, 2, 3]));
  print(result.contains([1, 2]));
  print(result.contains([1, 3]));
  print(result.contains([2, 3]));
  print(result.contains([1]));
  print(result.contains([2]));
  print(result.contains([3]));
  print(result.contains([]));
  print(result.length == 8);
}
