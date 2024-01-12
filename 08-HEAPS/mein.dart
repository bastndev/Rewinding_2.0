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

  int _rightChildIndex(int i) {
    return (i * 2) + 2;
  }

  bool _isLeaf(int i) {
    if (_rightChildIndex(i) >= size && _leftChildIndex(i) >= size) {
      return true;
    }
    return false;
  }

  void insert(int element){
    if(size >= maxSize) {
      return;
    }
    heap[size] = element;
    int current = size;

    while(heap[current] < heap[_parentIndex(current)]) {
      
    }
  }
}
