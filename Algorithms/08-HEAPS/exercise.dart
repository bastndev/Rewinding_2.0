import 'package:collection/collection.dart';

class KthLargest {
  int _k;
  late PriorityQueue<int> heap;

  KthLargest(this._k, List<int> nums) {
    this._k = _k;
    heap = PriorityQueue<int>((a, b) => a - b);

    for (int num in nums) {
      add(num);
    }
  }

  int add(int val) {
    heap.add(val);
    while (heap.length > _k) {
      heap.removeFirst();
    }
    return heap.first;
  }
}

void main() {
  KthLargest kthLargest = KthLargest(4, [1, 2, 3, 4, 5]);

  print(kthLargest.add(6));
  print(kthLargest.add(2));
  print(kthLargest.add(1));
  print(kthLargest.add(8));
}
