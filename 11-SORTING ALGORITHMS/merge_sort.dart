void sort(List<int> array) {
  List<int> helper = List<int>.filled(array.length, 0);
  _sort(array, helper, 0, array.length - 1);
}

void _sort(List<int> array, List<int> helper, int low, int high) {
  if (low < high) {
    int middle = (low + high) ~/ 2;
    _sort(array, helper, low, middle);
    _sort(array, helper, middle + 1, high);
    _merge(array, helper, low, middle, high);
  }
}

void _merge(List<int> array, List<int> helper, int low, int middle, int high) {
  for (int i = low; i <= high; i++) {
    helper[i] = array[i];
  }

  int helperLeft = low;
  int helperRight = middle + 1;
  int current = low;

  while (helperLeft <= middle && helperRight <= high) {
    if (helper[helperLeft] <= helper[helperRight]) {
      array[current] = helper[helperLeft];
      helperLeft++;
    } else {
      array[current] = helper[helperRight];
      helperRight++;
    }
    current++;
  }

  int remaining = middle - helperLeft;
  for (int i = 0; i <= remaining; i++) {
    array[current + i] = helper[helperLeft + i];
  }
}

void main() {
  List<int> list = [3, 5, 1, 7, 6, 2, 4];
  sort(list);
  print(list); 
}
