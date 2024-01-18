class SearchUtils {
  static void swap(List<int> array, int i, int j) {
    int temp = array[i];
    array[i] = array[j];
    array[j] = temp;
  }
}

class BubbleSort {
  static void sort(List<int> array) {
    for (int i = 0; i < array.length - 1; i++) {
      for (int j = 0; j < array.length - i - 1; j++) {
        if (array[j] > array[j + 1]) {
          SearchUtils.swap(array, j, j + 1);
        }
      }
    }
  }
}
