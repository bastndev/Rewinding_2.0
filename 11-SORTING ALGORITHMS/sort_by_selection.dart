//-TODO: NOS EFFICIENT

class SelectionSort {
  static void sort(List<int> array) {
    for (int i = 0; i < array.length - 1; i++) {
      int minIndex = findMinimumElementIndex(array, i);
      int temp = array[i];
      array[i] = array[minIndex];
      array[minIndex] = temp;
    }
  }

  static int findMinimumElementIndex(List<int> array, int start) {
    int minIndex = start;
    for (int i = start + 1; i < array.length; i++) {
      if (array[i] < array[minIndex]) minIndex = i;
    }
    return minIndex;
  }
}

void main() {
  List<int> list = [3, 5, 1, 2, 4];
  SelectionSort.sort(list);
  print(list);
}
