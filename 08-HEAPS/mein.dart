class MinHeap {
  List<int> heap;
  int size;
  int maxSize;

  MinHeap({required this.heap, required this.size, required this.maxSize});

  int _parentIndex(int i) {
    return (i - 1) ~/ 1;
  }

  int _leftChildIndex(int i) {
    return (i * 2) + 1;
  }
}
