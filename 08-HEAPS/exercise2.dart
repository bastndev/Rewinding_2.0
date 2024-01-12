// import 'package:collection/collection.dart';

class TopKFrequent {
  List<int> topKFrequent(List<int> numbers, int k) {
    Map<int, int> map = new Map<int, int>();
    for (int nums in numbers) {
      map[nums] = (map[nums] ?? 0) + 1;
    }
    var sortedEntries = map.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    List<int> res = [];
    for (int i = 0; i < k; i++) {
      res.add(sortedEntries[i].key);
    }
    return res;
  }
}

void main() {
  TopKFrequent topKFrequent = TopKFrequent();

  List<int> firstResult = topKFrequent.topKFrequent([1, 1, 1, 2, 2, 3], 2);
  firstResult.sort();
  print(firstResult == [1, 2]);
  print(topKFrequent.topKFrequent([1, 1, 2, 3, 3, 3], 1) == [3]);
}
