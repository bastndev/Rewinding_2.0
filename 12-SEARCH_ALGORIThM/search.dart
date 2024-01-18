class BinarySearchInteractive {
  int binarySearch(List<int> array, int target) {
    int left = 0;
    int right = array.length - 1;

    while (left <= right) {
      int mid = left + ((right - left) ~/ 2);

      if (array[mid] == target) return mid;

      if (array[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return -1;
  }
}

void main() {
  List<int> list = [1, 3, 4, 7, 8, 9, 12, 15, 24, 35, 95];

  final BinarySearchInteractive array = BinarySearchInteractive();
  final int search = 15;
  final result = array.binarySearch(list, search);

  if (result != -1) {
    print("YES your number exists");
  } else {
    print("NO your number not exists");
  }
}
