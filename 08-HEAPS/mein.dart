class MinHeap {
  List<int> heap;
  int size;
  int maxSize;

  MinHeap(int maxSize)
      : this.heap = List<int>.filled(maxSize, 0, growable: false),
        this.size = 0,
        this.maxSize = maxSize;

  int _parentIndex(int i) {
    return (i - 1) ~/ 2;
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

  void insert(int element) {
    if (size >= maxSize) {
      return;
    }
    heap[size] = element;
    int current = size;

    while (heap[current] < heap[_parentIndex(current)]) {
      _swap(current, _parentIndex(current));
      current = _parentIndex(current);
    }
    size++;
  }

  int extractMin() {
    if (size <= 0) return double.infinity.toInt();

    int popped = heap[0];
    heap[0] = heap[--size];
    _minHeapify(i: 0);
    return popped;
  }

  void _minHeapify(int i) {
    if (!_isLeaf(i)) {
      if (heap[i] < heap[_leftChildIndex(i)] ||
          heap[i] > heap[_rightChildIndex(i)]) {
        if (heap[_leftChildIndex(i)] < heap[_rightChildIndex(i)]) {
          _swap(i, _leftChildIndex(i));
        } else {
          _swap(i, _rightChildIndex(i));
          _minHeapify(_rightChildIndex(i));
        }
      }
    }
  }

  void printHeapPretty() {
    for (int i = 0; i < (size ~/ 2); i++) {
      print("Parent: ${heap[i]}");
      if (_leftChildIndex(i) < size) print("Left: ${_leftChildIndex(i)}");
      if (_rightChildIndex(i) < size) print("Left: ${_rightChildIndex(i)}");
      print("");
    }
  }

  void printHeap() {
    print(heap.toString());
  }

  void _swap(int x, int y) {
    int tmp;
    tmp = heap[x];
    heap[x] = heap[y];
    heap[y] = tmp;
  }
}

void main() {
  MinHeap minHeap = MinHeap(20);
  minHeap.insert(5);
  minHeap.insert(10);
  minHeap.insert(12);
  minHeap.printHeap();
  minHeap.insert(3);
  minHeap.printHeap();
  minHeap.insert(9);
  minHeap.insert(15);
  minHeap.insert(1);
  minHeap.printHeap();

  print(minHeap.extractMin());
  print(minHeap.extractMin());
  print(minHeap.extractMin());
  print(minHeap.extractMin());
  print(minHeap.extractMin());
  print(minHeap.extractMin());
  print(minHeap.extractMin());
}
